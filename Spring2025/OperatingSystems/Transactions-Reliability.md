# Raid and Reliability

__Raid__: redundant array of independent disks
    - standard way of organizing disks

### Raid 1
### Raid 2
### Raid 3
### Raid 4
$$$
parity = block1 \xor block2 \xor block3
parity' = block1' \xor block2 \xor block3

anything \xor anything = 0
anythin \xor 0 = anything
parity \xor parity'
parity' = block' \xor block1 xor parity
$$$

### Raid 5
- sort of the most general level of RAID
- spread out parity over all disks
- pros & cons
    + no parity disk bottleneck
    + all disks contribute read bandwidth
    - requires 4 I/Os for small writes
    - May not be good enough to protect devices >2TB (per storage device)

### Raid 6
- use horizontal and diagonal parities
- pros & cons
  + can protect against double failures
  - additional overhead to compute and update additional parities
  - silent bit flip in one block can propagate
