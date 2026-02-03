# Lab 3: Mini-Intrusion Detection Engine Design


## Pattern Matching Algorithm

The pieces of the system were easy to undersand from the schematics, but understanding how the whole system worked together required the testbench as an overall guide to understand. To my understanding, the design processes incoming 72-bit data words through reg9B then and passes them through detect7B to slide across 112 bits of the input to find selective matches (using a wildcard mask) with a 72-bit reference sequence (assumedly the intrusion sequence we are trying to detect). The match signal is only gotten when enabled and when valid comparison conditions are met, and the overall operations and read/write is controlled using dropfifo. So, the design integrates buffering (particularly in dropfifo), window sliding (wordmatch), and masked pattern matching (comparator) to provide intrusion detection.

### **reg9B**

* This is a 9-byte register.

### **comparator**

* This design takes in three inputs:

  * Two 56-bit inputs: `a` and `b`
  * One 7-bit input: `amask`
* It has one 1-bit output: `match`.
* The design compares each of the 7 bytes of `a` and `b`:

  * If `amask[i] = 1`, the corresponding byte is **ignored** (treated as matched).
  * If `amask[i] = 0`, the corresponding bytes are compared.
* If all enabled bytes match, the comparator outputs `1`.


### **wordmatch**

* This design takes in:

  * `datain`: 112-bit (14-byte) input
  * `datacomp`: 56-bit (7-byte) reference input
  * `wildcard`: 7-bit mask
* It has one 1-bit output: `match`.
* `wordmatch` uses a **7-byte sliding window** over `datain`:

  * The window slides one byte at a time (8 possible positions).
  * Each 7-byte chunk is compared against `datacomp`.
* `wildcard` is used as `amask` for the comparator.
* If **any** of the 7-byte chunks match, `wordmatch` outputs `1`.

### **detect7B**

* This design takes in six inputs:

  * Control signals: `clk`, `ce`, `match_en`, `mrst`
  * `pipe1`: 72-bit (9-byte) input
  * `hwregA`: 64-bit (8-byte) input
* It has one 1-bit output: `match`.


* An internal pipeline register, `pipe0`, stores a delayed version of `pipe1`.
* `pipe0[47:0]`, which is the old pipe1 data minus the wildcard bits, is merged with `pipe1[63:0]` using `busmerge`, which produces a 112-bit data window (`datain`) that is sent to `wordmatch`.
* `wordmatch` compares `datain` to `hwregA[55:0]` using the "wildcard" mask `hwregA[62:56]`.
* `match` can only be asserted if `match_en = 1`.
* Finally, n the rising edge of the clock

 * If `mrst = 1` → `match` is cleared to `0`
 * Else if `ce = 1` → `match` captures the comparison result
 * Else → `match` retains its previous value

### **dropfifo**

* This design takes in 8 inputs:

  * Control signals: `clk`, `rst`, `drop_pkt`, `fifowrite`, `fiforead`,  
  * `lastword`: 72-bit (9-byte) input data

* It has 2 outputs:

  * `out_fifo`: 72-bit (9-byte) output data
  * `valid_data`: 1-bit signal indicating valid output data

* Incoming data is written into an internal FD8CE when valid data is present and `drop_pkt` is 0.

* The FIFO storage is implemented using a synchronous dual-port memory (`dual9Bmem`), allowing read and write operations.

* When `drop_pkt` is asserted, incoming data is discarded

* Finally, on each rising edge of the clock:

  * If `rst = 1` → FIFO state is reset and output is invalid
  * Else if write conditions are met → input data is written and the write pointer advances
  * Else if read conditions are met → output data is read and the read pointer advances
  * Else → FIFO state is held

## Report Questions

### What is the purpose of `AMASK[6:0]`?

* `AMASK` (called `wildcard` in `wordmatch`) gives us the ability to only match certain bytes in wordmatch.
* For each bit if amask is set to...

  * `1` → corresponding byte from the word (datain) is ignored (counted as if it is matched to datacomp)
  * `0` → the corresponding byte from the word is checked for a match against datacomp(55:0)
* within comparator.v it is comparing each byte in a(55:0) and b(55:0) except for the bytes masked by AMASK

### What exactly does `busmerge.v` do?

* `busmerge.v` concatenates:

  * a 48-bit bus
  * a 64-bit bus
* In `detect7B`, it merges `pipe0[47:0]` and `pipe1[63:0]`
* The result is a 112-bit bus (`datain`) used by `wordmatch`

### What do the `comp8` modules do in this schematic?

* Each `comp8` compares **one byte (8 bits)** of data.
* Seven `comp8` modules are used in parallel in the 'comparator' design along with amask to see if a 7-byte sequence matches another 7-byte sequence

### What is the purpose of `dual9Bmem` in `dropfifo.sch`?

* `dual9Bmem` is a 72-bit (9-byte) **dual-port memory**.
* It serves as the **storage element of the FIFO**.
* It allows read and write operations and buffers incoming data.
* See optioons selected below:
<img width="768" height="610" alt="dual9Bmem_1" src="https://github.com/user-attachments/assets/5f7db361-8701-4868-96d7-3e8dec9e2dea" />
<img width="767" height="610" alt="dual9Bmem_2" src="https://github.com/user-attachments/assets/5ceb856e-3714-4dfe-aa91-fcbbded472c7" />
<img width="765" height="612" alt="dual9Bmem_3" src="https://github.com/user-attachments/assets/41a0a1f6-9ad5-4532-90e0-5a72d03f512d" />


## Schematics

<p align="center">
  <img width="841" height="653"
       title="comparator schematic"
       alt="comparator.sch"
       src="https://github.com/user-attachments/assets/fbcfd565-bda5-4f50-a4c2-1a761a844a17" />
  <br>
  <strong>Figure 1:</strong> comparator schematic
</p>

---
<p align="center">
  <img width="841" height="657"
       title="wordmatch schematic"
       alt="wordmatch.sch"
       src="https://github.com/user-attachments/assets/e2c08a6d-d39b-4a6f-b076-eabea9f75547" />
  <br>
  <strong>Figure 2:</strong> wordmatch schematic
</p>

---
<p align="center">
  <img width="842" height="652"
       title="reg9B schematic"
       alt="reg9B.sch"
       src="https://github.com/user-attachments/assets/5fc6233f-e276-4ca0-842c-9d3bab479341" />
  <br>
  <strong>Figure 3:</strong> reg9B schematic
</p>

---
<p align="center">
  <img width="842" height="653"
       title="detect7B schematic"
       alt="detect7B.sch"
       src="https://github.com/user-attachments/assets/0f8bf4fc-af3f-4cd2-a202-fdddfae43d25" />
  <br>
  <strong>Figure 4:</strong> detect7B schematic
</p>

---
<p align="center">
  <img width="845" height="652"
       title="dropfifo schematic"
       alt="dropfifo.sch"
       src="https://github.com/user-attachments/assets/3b04538a-487d-414f-893d-f502b027a57f" />
  <br>
  <strong>Figure 5:</strong> dropfifo schematic
</p>

---
note: chatgpt used solely for formatting







