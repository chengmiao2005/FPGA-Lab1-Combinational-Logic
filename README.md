# FPGA Lab 1 — Combinational Logic

**Verilog · Boolean Logic · Full Adder · Comparator**

Former repository name: `FPGA1`.

One-bit full adder and comparator exercises, illustrating Boolean equations and continuous assignments. 一位全加器与比较器基础实验。

| File | Module | Behavior |
| --- | --- | --- |
| [rtl/full_adder.v](rtl/full_adder.v) | `full_adder` | Three one-bit inputs produce sum and carry |
| [rtl/comparator.v](rtl/comparator.v) | `compare` | `LED1`: A < B; `LED2`: A = B; `LED3`: A > B |

The adder uses `Sum = A ^ B ^ Cin` and `Cout = (A & B) | (Cin & (A ^ B))`. Both circuits are combinational and require no clock.

## Compile the modules

With Icarus Verilog installed, run from this directory:

```bash
mkdir -p build
iverilog -g2012 -s full_adder -o build/adder.vvp rtl/full_adder.v
iverilog -g2012 -s compare -o build/comparator.vvp rtl/comparator.v
```

These commands check compilation only; this repository has no behavioral testbench. These are introductory exercises supporting the larger FPGA projects.

[FPGA lab index](https://github.com/chengmiao2005/FPGA-Labs) · [Original-to-current file map](docs/FILE_MAP.md)

[Validation record](docs/VALIDATION.md)
