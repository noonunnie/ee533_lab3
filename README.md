# Lab 3: Mini-Intrusion Detection Engine Design


## Pattern Matching Algorithm

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
* `pipe0[47:0]` is merged with `pipe1[63:0]` using `busmerge`.
* This produces a 112-bit data window (`datain`) that is sent to `wordmatch`.
* `wordmatch` compares `datain` to `hwregA[55:0]` using the mask `hwregA[62:56]`.
* `match` can only be asserted if `match_en = 1`.
* If `mrst = 1` → `match` is cleared to `0`
* Else if `ce = 1` → `match` captures the comparison result
* Else → `match` retains its previous value

### **dropfifo**

* (description goes here)


## Report Questions

### What is the purpose of `AMASK[6:0]`?

* `AMASK` (called `wildcard` in `wordmatch`) allows selective byte matching.
* For each bit:

  * `1` → corresponding byte is ignored (treated as matched)
  * `0` → corresponding byte must match `datacomp`
* This enables wildcard-based pattern matching.

---

### What exactly does `busmerge.v` do?

* `busmerge.v` concatenates:

  * a 48-bit bus
  * a 64-bit bus
* In `detect7B`, it merges `pipe0[47:0]` and `pipe1[63:0]`
* The result is a 112-bit bus (`datain`) used by `wordmatch`

---

### What do the `comp8` modules do in this schematic?

* Each `comp8` compares **one byte (8 bits)** of data.
* Seven `comp8` modules are used in parallel.
* Their outputs are combined to determine whether the full word matches.

---

### What is the purpose of `dual9Bmem` in `dropfifo.sch`?

* `dual9Bmem` is a 72-bit (9-byte) **dual-port memory**.
* It serves as the **storage element of the FIFO**.
* It allows simultaneous read and write operations and buffers incoming data.


**reg9B**
    This is a 9-byte register
    
**comparator** 
    This design takes in 3 inputs: 2 56-bit chunks of data called a and b and a 7-bit input called amask. It has 1 1-bit output called match. 
    It compares each of the 7 bytes of a and b to each other as long as the corresponding amask bit is set to 1. if the corresponding amask bit is set to 0 it just counts those bytes as matched (if amask(0) = 0 then the first bytes of a and b - a(7:0) and b(7:0) - are considered matched). If all the bytes are matching, then comparator outputs 1.

**wordmatch**
    This design takes in 3 inputs: a 112-bit (14 byte) input called datain, a 56-bit (7 byte) input called datacomp, and a 7-bit input called wildcard. It has 1 1-bit output called match. 
    wordmatch compares uses a 7-btye sliding window (slides by 1 byte each time) to compare 8 chunks of datain to datacomp, the reference. wildcard is just used as amask from the comparator design, masking each of the 8 7-byte chunks of datain the same way. if any of the 7-byte chunks from datain match datacomp, wildcard ouputs a 1.

**detect7B**
     this design takes in 6 inputs: 4 signals (clk, ce, match_en, and mrst), a 72-bit (9 byte) input called pipe1, and a 64-bit input (8 byte) called hwregA. It has 1 1-bit output called match. 
     It uses an internal pipeline register, pipe0, to capture delayed data from pipe1. It then merges pipe0(47:0), which is the old pipe1 data minus the wildcard bits, with the lower 64 bits of pipe1 (pipe(63:0)) using the busmerge component which produces a 112-bit data window (datain) that is passed to the wordmatch module to see if there are any matches to the hwregA(55:0) sequence (the wildcard mask is from hwregA(62:56)). match can only be 1 if match_en = 1.
     Finally, on each rising clock edge:
       If mrst = 1
         match is cleared to 0
       Else if ce = 1
         match captures the current comparison result
       Else
         match retains its previous value
    
**dropfifo**
    

What is the purpose of AMASK[6:0]?
    AMASK from comparator.v (assigned wildcard(6:0) in wordmatch.v) gives us the ability to only match certain bytes in wordmatch
    - If a bit of amask is set to 1, the corresponding byte from the word (datain) is ignored (counted as if it is matched to datacomp)
    - If a bit of amask is set to 0, the corresponding byte from the word is checked for a match against datacomp(55:0)
    within comparator.v it is comparing each byte in a(55:0) and b(55:0) except for the bytes masked by AMASK

What exactly does busmerge.v do?
    busmerge.v combines a 48 bit bus and 64 bit bus. In detect7B it is used to merge pipe0(47:0) and pipe1(63:0) and input it into wordmatch as datain(111:0) in wordmatch to compare each byte that wildcard does not mask to hwregA(55:0)

What do the comp8 modules do in this schematic?

What is the purpose of dual9Bmem in dropfifo.sch?



## Schematics

<img width="841" height="653" title="comparator schematic" alt="comparator.sch" src="https://github.com/user-attachments/assets/fbcfd565-bda5-4f50-a4c2-1a761a844a17" />
**Figure 1:** comparator schematic

<img width="841" height="657" title="wordmatch schematic" alt="wordmatch.sch" src="https://github.com/user-attachments/assets/e2c08a6d-d39b-4a6f-b076-eabea9f75547" />
**Figure 2:** wordmatch schematic

<img width="842" height="652" title="reg9B schematic" alt="reg9B.sch" src="https://github.com/user-attachments/assets/5fc6233f-e276-4ca0-842c-9d3bab479341" />
**Figure 3:** reg9B schematic

<img width="842" height="653" title="detect7B schematic" alt="detect7B.sch" src="https://github.com/user-attachments/assets/0f8bf4fc-af3f-4cd2-a202-fdddfae43d25" />
**Figure 4:** detect7B schematic

<img width="845" height="652"  title="dropfifo schematic" alt="dropfifo.sch" src="https://github.com/user-attachments/assets/3b04538a-487d-414f-893d-f502b027a57f" />
**Figure 4:** dropfifo schematic



## Generated Verilog





