# Sherlock Chain Analysis Report

**Source file:** `blk04330.dat`  
**Generated:** 2026-03-14 16:49:19 UTC  
**Blocks in file:** 84  
**Total transactions analyzed:** 341792  

---

## Summary

| Metric | Value |
|--------|-------|
| Blocks parsed | 84 |
| Transactions analyzed | 341792 |
| Flagged transactions | 304989 (89.2%) |
| Heuristics applied | 9 |
| Entity clusters found | 50 |
| Addresses in top clusters | 4381 |

**Heuristics applied:** `cioh`, `change_detection`, `address_reuse`, `coinjoin`, `consolidation`, `self_transfer`, `peeling_chain`, `op_return`, `round_number_payment`

---

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.00 |
| Median | 11094.37 |
| Mean | 20403.85 |
| Maximum | 100545.46 |

## Script Type Distribution (Outputs)

| Script Type | Count | Description |
|-------------|-------|-------------|
| `p2wpkh` | 336223 | Native SegWit — modern wallets (bc1q…) |
| `p2tr` | 213071 | Taproot — newest, max privacy (bc1p…) |
| `p2sh` | 81758 | Pay-to-Script-Hash — legacy smart contracts (3…) |
| `p2pkh` | 76590 | Legacy — original Bitcoin addresses (1…) |
| `p2wsh` | 12432 | Native SegWit script — multisig / complex (bc1q…) |
| `op_return` | 185100 | Data inscription — burns value, stores data |
| `unknown` | 9307 | Unrecognised locking pattern |

---

## Entity Clusters (Transitive CIOH)

> These clusters are derived by applying the Common Input Ownership Heuristic transitively across all transactions in the file using a Union-Find structure. If tx A links addresses {1,2} and tx B links {2,3}, all three are grouped into one cluster — the same inference that professional chain analysis tools make.

**All results are probabilistic.** CoinJoin transactions are excluded from CIOH clustering, but false positives are still possible.

| Rank | Cluster ID | Addresses | Transactions |
|------|------------|-----------|-------------|
| 1 | `raw:6d15eb720cf1` | 4038 | 8230 |
| 2 | `sh:ba3000edf40f1` | 18 | 4 |
| 3 | `pkh:aa210015547d` | 14 | 1 |
| 4 | `raw:7ef841c300ce` | 13 | 2 |
| 5 | `sh:ba30008080d55` | 10 | 3 |
| 6 | `raw:1c0014f5277a` | 10 | 1 |
| 7 | `raw:20125296f1d8` | 10 | 1 |
| 8 | `wpkh:413971857d3` | 10 | 1 |
| 9 | `raw:45a359ba079d` | 9 | 1 |
| 10 | `raw:83bc11573a65` | 8 | 1 |
| 11 | `raw:98f8a0` | 8 | 1 |
| 12 | `raw:1f58489f4402` | 8 | 1 |
| 13 | `raw:c30e49dbc05f` | 8 | 1 |
| 14 | `pkh:ffb4401c0014` | 8 | 1 |
| 15 | `raw:7ef841c300ce` | 7 | 3 |
| 16 | `raw:2501e6b95a00` | 7 | 1 |
| 17 | `raw:aa578838acd3` | 7 | 1 |
| 18 | `raw:febd53377d9f` | 7 | 1 |
| 19 | `raw:8e0901e6b964` | 7 | 1 |
| 20 | `raw:e6b9580080ea` | 6 | 2 |

_… 30 more clusters not shown. See `entity_clusters` in the JSON report._

### Top 5 Cluster Address Samples

**Cluster #1** (`raw:6d15eb720cf1`) — 4038 addresses, 8230 transactions  
- `pkh:005b33bd8f48958e3751b06800ee8b8a0bee8f5a`
- `pkh:011c00141d408b952292f4860cbd9e9f6edda895`
- `pkh:01e6ba240091e3b53f1c001469e2526bc25cbffd`
- `pkh:01e6ba30008ef8a27f285120164d0e323f48f77f`
- `pkh:01e6ba30008efdb005285120164d0e323f48f77f`
- _… 4033 more addresses_

**Cluster #2** (`sh:ba3000edf40f1`) — 18 addresses, 4 transactions  
- `sh:ba2400bbb2671c00141d408b952292f4860cbd9e`
- `sh:ba300084ad2c1c00141d408b952292f4860cbd9e`
- `sh:ba300087cf281c00141d408b952292f4860cbd9e`
- `sh:ba3000afc3731c00141d408b952292f4860cbd9e`
- `sh:ba3000b19c771c00141d408b952292f4860cbd9e`
- _… 13 more addresses_

**Cluster #3** (`pkh:aa210015547d`) — 14 addresses, 1 transactions  
- `pkh:220015547d110dde52ce2c6cd38878195598f8b2`
- `pkh:520015547d110dde52ce2c6cd38878195598f8b2`
- `pkh:83370015547d110dde52ce2c6cd38878195598f8`
- `pkh:90470015547d110dde52ce2c6cd38878195598f8`
- `pkh:90790015547d110dde52ce2c6cd38878195598f8`
- _… 9 more addresses_

**Cluster #4** (`raw:7ef841c300ce`) — 13 addresses, 2 transactions  
- `raw:7ef841c300cec48849187c782bf35b1801e6ba2e008484cf65285120f157115e`
- `raw:7ef841c300cec48849187c782bf35b1801e6ba2e008486a30f285120f157115e`
- `raw:7ef841c300cec48849187c782bf35b1801e6ba2e00d9e50f285120f157115e20`
- `raw:7ef841c300cec48849187c782bf35b1801e6ba2e00dbb843285120f157115e20`
- `raw:7ef841c300cec48849187c782bf35b1801e6ba2e00dd8b6d285120f157115e20`
- _… 8 more addresses_

**Cluster #5** (`sh:ba30008080d55`) — 10 addresses, 3 transactions  
- `sh:ba30008080d5571c00141d408b952292f4860cbd`
- `sh:ba30008082ae5b1c00141d408b952292f4860cbd`
- `sh:ba3000f38d691c00141d408b952292f4860cbd9e`
- `sh:ba3000f4e66d1c00141d408b952292f4860cbd9e`
- `sh:ba3000f6bf671c00141d408b952292f4860cbd9e`
- _… 5 more addresses_

---

## Block #847493

**Block Hash:** `00000000000000000000fa22b4d00863e84f6de04d49d7694b3fe984a29cecf1`  
**Height:** 847493  
**Transactions:** 3572  
**Flagged:** 2668 (74.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 702 | 19.7% |
| `change_detection` | 2420 | 67.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 110 | 3.1% |
| `consolidation` | 120 | 3.4% |
| `self_transfer` | 2 | 0.1% |
| `peeling_chain` | 1222 | 34.2% |
| `op_return` | 162 | 4.5% |
| `round_number_payment` | 573 | 16.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2304 | 64.5% |
| batch_payment | 556 | 15.6% |
| consolidation | 120 | 3.4% |
| coinjoin | 110 | 3.1% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 480 | 13.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 104.88 |
| Median | 12792.10 |
| Mean | 24698.62 |
| Maximum | 63040.81 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed963dc455b9ff… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b451f2c02bbe5fd… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 17200000 sat (medium confidence) |
| `` | consolidation | Consolidation: 36 inputs → 1 outputs (high confidence) |
| `` | unknown | OP_RETURN data (unknown): "$-:BTC.BTC:bc1q2wduvl0p47mcqz8cem9ht0aa2…" |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd8c9ea2e9a1be6… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2331c80dc0b0200… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302dcf6f60102… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23323909adf8f8c… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303b4f7d4f971… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 16 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 126 inputs → 1 outputs (high confidence) |

---

## Block #847494

**Block Hash:** `0000000000000000000037a6b12eab5570cfc8a0a3d7f239d585968b6a4ab08e`  
**Height:** 847494  
**Transactions:** 2605  
**Flagged:** 1804 (69.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 473 | 18.2% |
| `change_detection` | 1598 | 61.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 90 | 3.5% |
| `consolidation` | 80 | 3.1% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 689 | 26.4% |
| `op_return` | 152 | 5.8% |
| `round_number_payment` | 547 | 21.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1615 | 62.0% |
| batch_payment | 505 | 19.4% |
| consolidation | 80 | 3.1% |
| coinjoin | 90 | 3.5% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 313 | 12.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1020.77 |
| Median | 11652.54 |
| Mean | 11652.54 |
| Maximum | 22284.30 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed58464ed650d3… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 100000 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b82ca7318f29d50… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd134e16d6e4013… |
| `` | consolidation | Consolidation: 102 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303d4c89cbb89… |
| `` | batch_payment | OP_RETURN data (unknown): 00aaa333810180b5d9af… |
| `` | coinjoin | CoinJoin: 8 equal outputs of 3576765 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303888ae2d38c… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8f2e7e2d5879f4… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847495

**Block Hash:** `00000000000000000001f4cd5f8014ebc56a759a400beedaf76277b37bdbd1d9`  
**Height:** 847495  
**Transactions:** 3174  
**Flagged:** 2208 (69.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 654 | 20.6% |
| `change_detection` | 1932 | 60.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 103 | 3.2% |
| `consolidation` | 107 | 3.4% |
| `self_transfer` | 5 | 0.2% |
| `peeling_chain` | 1007 | 31.7% |
| `op_return` | 126 | 4.0% |
| `round_number_payment` | 580 | 18.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2083 | 65.6% |
| batch_payment | 429 | 13.5% |
| consolidation | 107 | 3.4% |
| coinjoin | 103 | 3.2% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 447 | 14.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 8.92 |
| Median | 5641.94 |
| Mean | 13485.66 |
| Maximum | 47240.97 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edb2f48c25fe3d… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 100000 sat (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b658bcfe89d9d21… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 41 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 14fb3b6d1c1f9cb21fe2… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3be31a56c191d3… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 25 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b92545b6995905d… |

---

## Block #847496

**Block Hash:** `000000000000000000017aea4bdf1187cdc188275cf7eea281f23d49851cc00e`  
**Height:** 847496  
**Transactions:** 2966  
**Flagged:** 2383 (80.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 750 | 25.3% |
| `change_detection` | 1997 | 67.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 65 | 2.2% |
| `consolidation` | 142 | 4.8% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 1082 | 36.5% |
| `op_return` | 99 | 3.3% |
| `round_number_payment` | 585 | 19.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1793 | 60.5% |
| batch_payment | 461 | 15.5% |
| consolidation | 142 | 4.8% |
| coinjoin | 65 | 2.2% |
| coinbase | 1 | 0.0% |
| unknown | 504 | 17.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 205.63 |
| Median | 9909.27 |
| Mean | 18330.91 |
| Maximum | 59146.48 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed06294cf6805b… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b49e63b2c8c8b39… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303888ae2d38c… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b83dba152d7f5f4… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303d2fff9db24… |
| `` | batch_payment | OP_RETURN data (unknown): 00aaa333810180c1a8a5… |
| `` | batch_payment | OP_RETURN data (unknown): 00aaa3338101809091a4… |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "=:e:0x0819020d627417E18A377077B67D20906B…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 280 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 280 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Block #847497

**Block Hash:** `00000000000000000000b6dcf9cedf68960ea71ab65ce382200a63a17c09983d`  
**Height:** 847497  
**Transactions:** 3948  
**Flagged:** 3080 (78.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 965 | 24.4% |
| `change_detection` | 2692 | 68.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 143 | 3.6% |
| `consolidation` | 127 | 3.2% |
| `self_transfer` | 9 | 0.2% |
| `peeling_chain` | 1399 | 35.4% |
| `op_return` | 142 | 3.6% |
| `round_number_payment` | 832 | 21.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2342 | 59.3% |
| batch_payment | 656 | 16.6% |
| consolidation | 127 | 3.2% |
| coinjoin | 143 | 3.6% |
| self_transfer | 8 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 671 | 17.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.51 |
| Median | 27524.92 |
| Mean | 33375.13 |
| Maximum | 71232.35 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edbb9baf81268a… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 100000 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb0248348753bac… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0bbd3c083… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380e0ba84bf… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c595b9f18b… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325be3a4118dfdfa87… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | self_transfer | OP_RETURN data (unknown): "=:ETH.USDT-EC7:0x0e76AD25278fa1753a005c0…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "=:BSC.BNB:0x5C9C98Df6A0E90815a503778c18A…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:2820BDDA54279103EF635F8BC66B0A04169B…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:0049852FA4DCF4F67FBBD6BADBEE121DDD6B…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:1EBA3DF824B42455F75EB5D5F61B4C3B2887…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:C4A6271590075C80F1124EF68200161530BF…" |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 25 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303888ae2d38c… |

---

## Block #847498

**Block Hash:** `00000000000000000000718d26b3fa75cf63715635e111b199d5d1c600d38810`  
**Height:** 847498  
**Transactions:** 2728  
**Flagged:** 2084 (76.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 470 | 17.2% |
| `change_detection` | 1915 | 70.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 71 | 2.6% |
| `consolidation` | 67 | 2.5% |
| `self_transfer` | 9 | 0.3% |
| `peeling_chain` | 877 | 32.1% |
| `op_return` | 69 | 2.5% |
| `round_number_payment` | 459 | 16.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1697 | 62.2% |
| batch_payment | 557 | 20.4% |
| consolidation | 67 | 2.5% |
| coinjoin | 71 | 2.6% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 331 | 12.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 5.27 |
| Median | 4630.37 |
| Mean | 15525.22 |
| Maximum | 100545.46 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed6be82d47c6b4… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b21e337afccb39b… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b077fc283b66aa0… |
| `` | consolidation | Consolidation: 29 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1932cb21f21f59… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a33314dc18 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a33314dc18 |
| `` | batch_payment | OP_RETURN data (unknown): 58325b26893b87c09a11… |
| `` | coinjoin | CoinJoin: 10 equal outputs of 295546 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Block #847499

**Block Hash:** `000000000000000000017fd2e22e080862627a916b992c0d29e5f40cb4ee64ad`  
**Height:** 847499  
**Transactions:** 3303  
**Flagged:** 2638 (79.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 687 | 20.8% |
| `change_detection` | 2350 | 71.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 122 | 3.7% |
| `consolidation` | 103 | 3.1% |
| `self_transfer` | 9 | 0.3% |
| `peeling_chain` | 1109 | 33.6% |
| `op_return` | 277 | 8.4% |
| `round_number_payment` | 588 | 17.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2058 | 62.3% |
| batch_payment | 544 | 16.5% |
| consolidation | 103 | 3.1% |
| coinjoin | 122 | 3.7% |
| self_transfer | 5 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 470 | 14.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.58 |
| Median | 16971.79 |
| Mean | 23985.54 |
| Maximum | 59884.58 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3ac4… |
| `` | self_transfer | OP_RETURN data (unknown): 50c255733b3798b2cc16… |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.USDT-EC7:0xd44deA3Fd00Bae5D9220A6C…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 17 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 21 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 23 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 500000 sat (medium confidence) |
| `` | consolidation | Consolidation: 32 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd0d2c3d2f5d803… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |

---

## Block #847500

**Block Hash:** `00000000000000000002d8849904f70a5ab5d3adc3daa5b8a4bd52005e5e755a`  
**Height:** 847500  
**Transactions:** 2066  
**Flagged:** 1706 (82.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 372 | 18.0% |
| `change_detection` | 1549 | 75.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 48 | 2.3% |
| `consolidation` | 59 | 2.9% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 685 | 33.2% |
| `op_return` | 304 | 14.7% |
| `round_number_payment` | 348 | 16.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1309 | 63.4% |
| batch_payment | 391 | 18.9% |
| consolidation | 59 | 2.9% |
| coinjoin | 48 | 2.3% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 257 | 12.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 22.72 |
| Median | 10533.73 |
| Mean | 27589.98 |
| Maximum | 90705.26 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed46f571e9bd65… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 982000 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b743469e00b3a43… |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | unknown | OP_RETURN data (unknown): "=:THOR.RUNE:thor19yr79876azfrr6rsv6kfef7…" |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | unknown | OP_RETURN data (unknown): 036f2f2882db75bcea81… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfe0db2b663e884… |
| `` | consolidation | Consolidation: 25 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1d27de148c71ee… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | consolidation | Consolidation: 31 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #847501

**Block Hash:** `000000000000000000028a90ba689b0adbb45563164a6e26cac62cb73ad44bfa`  
**Height:** 847501  
**Transactions:** 477  
**Flagged:** 376 (78.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 123 | 25.8% |
| `change_detection` | 332 | 69.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 12 | 2.5% |
| `consolidation` | 31 | 6.5% |
| `self_transfer` | 3 | 0.6% |
| `peeling_chain` | 189 | 39.6% |
| `op_return` | 12 | 2.5% |
| `round_number_payment` | 83 | 17.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 293 | 61.4% |
| batch_payment | 60 | 12.6% |
| consolidation | 31 | 6.5% |
| coinjoin | 12 | 2.5% |
| self_transfer | 2 | 0.4% |
| coinbase | 1 | 0.2% |
| unknown | 78 | 16.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 38.53 |
| Median | 24147.58 |
| Mean | 25273.28 |
| Maximum | 70856.97 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed311015e885d5… |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 34 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 334375 sat (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "MIGRATE_RUNEc86d905a3,c82a70d93" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 26 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380c8afa025… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233038094ebdc03… |
| `` | batch_payment | OP_RETURN data (unknown): "" |

---

## Block #847502

**Block Hash:** `0000000000000000000052bb2e7a40b1cf592b1abbf8a0e34d30af7ba47ec9ff`  
**Height:** 847502  
**Transactions:** 878  
**Flagged:** 715 (81.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 168 | 19.1% |
| `change_detection` | 633 | 72.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 73 | 8.3% |
| `consolidation` | 32 | 3.6% |
| `self_transfer` | 14 | 1.6% |
| `peeling_chain` | 254 | 28.9% |
| `op_return` | 25 | 2.8% |
| `round_number_payment` | 164 | 18.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 430 | 49.0% |
| batch_payment | 221 | 25.2% |
| consolidation | 32 | 3.6% |
| coinjoin | 73 | 8.3% |
| self_transfer | 13 | 1.5% |
| coinbase | 1 | 0.1% |
| unknown | 108 | 12.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 54.98 |
| Median | 423.45 |
| Mean | 6298.35 |
| Maximum | 31221.80 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed7cbdaf1a4ecf… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bbe631681da5f42… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bc50785ddbb9082… |
| `` | simple_payment | OP_RETURN data (unknown): "=:THOR.RUNE:thor1fq30sqhq7x0whxdznrtrmj8…" |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303bcadd1de3f… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd88c88f88ac981… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 10000 sat (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:DA0A811BF1BFAAADF79798751D1C1CB2AE09…" |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.USDC-B48:0x0e289584a8fA8fD636B1Ca9…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:526FEA76FD553B6FBAD9B0D6718283F2E8CB…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b79de5167b7137f… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5d118b1b347e09… |
| `` | batch_payment | OP_RETURN data (unknown): 1492a33314d312 |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847503

**Block Hash:** `000000000000000000031c523f1be5d4377356df52264810266f2a89a0dd84ca`  
**Height:** 847503  
**Transactions:** 330  
**Flagged:** 290 (87.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 59 | 17.9% |
| `change_detection` | 270 | 81.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 3 | 0.9% |
| `consolidation` | 15 | 4.5% |
| `self_transfer` | 1 | 0.3% |
| `peeling_chain` | 108 | 32.7% |
| `op_return` | 54 | 16.4% |
| `round_number_payment` | 49 | 14.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 179 | 54.2% |
| batch_payment | 96 | 29.1% |
| consolidation | 15 | 4.5% |
| coinjoin | 3 | 0.9% |
| coinbase | 1 | 0.3% |
| unknown | 36 | 10.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 188.11 |
| Median | 16289.81 |
| Mean | 20356.90 |
| Maximum | 65414.83 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed07707bf91e6d… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380b5edf6d0… |
| `` | batch_payment | OP_RETURN data (unknown): 1494aa3314cb06 |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |

---

## Block #847504

**Block Hash:** `00000000000000000000ab828ee4780ba893768b289dfe5b495ae2003edb480e`  
**Height:** 847504  
**Transactions:** 4001  
**Flagged:** 3373 (84.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 869 | 21.7% |
| `change_detection` | 2986 | 74.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 86 | 2.1% |
| `consolidation` | 141 | 3.5% |
| `self_transfer` | 9 | 0.2% |
| `peeling_chain` | 1300 | 32.5% |
| `op_return` | 701 | 17.5% |
| `round_number_payment` | 753 | 18.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2572 | 64.3% |
| batch_payment | 596 | 14.9% |
| consolidation | 141 | 3.5% |
| coinjoin | 86 | 2.1% |
| self_transfer | 6 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 599 | 15.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 36.10 |
| Median | 2630.20 |
| Mean | 9900.58 |
| Maximum | 29000.33 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed7d49b596ca40… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb1a236118178de… |
| `` | batch_payment | OP_RETURN data (unknown): 160000c0a23302c95f01 |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 46 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 15 equal outputs of 59000 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 02000f73bf5016dc51af… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23341e4960601 |
| `` | batch_payment | OP_RETURN data (unknown): 58325b21f6031572b229… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0dfc80e02… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2338e019f85c801… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0f8a4fed5… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380d0dbc3f4… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380d0dbc3f4… |
| `` | batch_payment | OP_RETURN data (unknown): "+:BTC/BTC::ss:0" |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |

---

## Block #847505

**Block Hash:** `00000000000000000002dd47b96794c30d596f65e63883b1666feb6af6f9873b`  
**Height:** 847505  
**Transactions:** 3214  
**Flagged:** 2709 (84.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 760 | 23.6% |
| `change_detection` | 2404 | 74.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 92 | 2.9% |
| `consolidation` | 130 | 4.0% |
| `self_transfer` | 5 | 0.2% |
| `peeling_chain` | 1223 | 38.1% |
| `op_return` | 188 | 5.8% |
| `round_number_payment` | 592 | 18.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1845 | 57.4% |
| batch_payment | 635 | 19.8% |
| consolidation | 130 | 4.0% |
| coinjoin | 92 | 2.9% |
| self_transfer | 5 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 506 | 15.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 8.60 |
| Median | 2582.23 |
| Mean | 9642.22 |
| Maximum | 42485.94 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a4a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b175a3cf7eb8691… |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 55 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 331 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3db05cd6898c91… |
| `` | batch_payment | OP_RETURN data (unknown): "consolidate" |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.USDC-B48:0xCE043B253a80Da8350D02a3…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:C9DE4495EB877886FBC9B259AEF0E57C8110…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:68A7AD6DB33341DBA127E42395FB95907F82…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:D14BF521F2D08ADD502A7D25C53CAE1ED722…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:B06749F0C5906838CF66BA14731D07196934…" |
| `` | consolidation | Consolidation: 99 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd9be4d095ecfb7… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847506

**Block Hash:** `00000000000000000001e60d63b6965aa021a33cc81781f42aa5c4d2d4ff7126`  
**Height:** 847506  
**Transactions:** 1683  
**Flagged:** 1370 (81.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 304 | 18.1% |
| `change_detection` | 1137 | 67.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 43 | 2.6% |
| `consolidation` | 65 | 3.9% |
| `self_transfer` | 12 | 0.7% |
| `peeling_chain` | 561 | 33.3% |
| `op_return` | 77 | 4.6% |
| `round_number_payment` | 373 | 22.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1054 | 62.6% |
| batch_payment | 314 | 18.7% |
| consolidation | 65 | 3.9% |
| coinjoin | 43 | 2.6% |
| self_transfer | 9 | 0.5% |
| coinbase | 1 | 0.1% |
| unknown | 197 | 11.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1712.43 |
| Median | 6399.78 |
| Mean | 15872.33 |
| Maximum | 65928.68 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed826af768c5b6… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb88c7842ee6e76… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | unknown | OP_RETURN data (unknown): 24640d859c116a573fe7… |
| `` | consolidation | Consolidation: 62 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3fd712bd1809a4… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302c099b22b02… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325be316dd983969d0… |
| `` | consolidation | Consolidation: 18 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 19 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 22 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.ETH:0xC333297812e799cb925C832ab753…" |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |

---

## Block #847507

**Block Hash:** `000000000000000000016fab39fb730f4263ebb9a890976fcece700f18b766ed`  
**Height:** 847507  
**Transactions:** 3773  
**Flagged:** 2923 (77.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 849 | 22.5% |
| `change_detection` | 2532 | 67.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 79 | 2.1% |
| `consolidation` | 137 | 3.6% |
| `self_transfer` | 2 | 0.1% |
| `peeling_chain` | 1329 | 35.2% |
| `op_return` | 112 | 3.0% |
| `round_number_payment` | 643 | 17.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2260 | 59.9% |
| batch_payment | 690 | 18.3% |
| consolidation | 137 | 3.6% |
| coinjoin | 79 | 2.1% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 604 | 16.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 71.60 |
| Median | 20334.15 |
| Mean | 23358.94 |
| Maximum | 72320.64 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edcc0225145552… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba13f28a986102b… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | unknown | OP_RETURN data (unknown): "=:MAYA.CACAO:maya1akth4h8lmawgz933795klf…" |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 15 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 330000 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf30916e4662ab5… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303eac0d93502… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380e0ba84bf… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2332380e8e0a98f… |
| `` | self_transfer | OP_RETURN data (unknown): 00c0a23323808095e789… |
| `` | consolidation | Consolidation: 77 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |

---

## Block #847508

**Block Hash:** `000000000000000000013c6302edf7a8a6f6eea984201dc73e766efd2defd382`  
**Height:** 847508  
**Transactions:** 3274  
**Flagged:** 2231 (68.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 518 | 15.8% |
| `change_detection` | 2016 | 61.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 110 | 3.4% |
| `consolidation` | 77 | 2.4% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 899 | 27.5% |
| `op_return` | 119 | 3.6% |
| `round_number_payment` | 722 | 22.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2040 | 62.3% |
| batch_payment | 686 | 21.0% |
| consolidation | 77 | 2.4% |
| coinjoin | 110 | 3.4% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 357 | 10.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 136.77 |
| Median | 32978.80 |
| Mean | 34183.55 |
| Maximum | 69835.34 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed004eb71fe128… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd8f609a769dc74… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b84728db43563a2… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e0f8d9fa81… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 17 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 12056f04656b61405de7… |
| `` | self_transfer | OP_RETURN data (unknown): 5b4b48c411470240b481… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8993adc52e7ef1… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 301070 sat (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 18 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 160200c0a2330380acc7… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (medium confidence) |

---

## Block #847509

**Block Hash:** `00000000000000000000f660ae6aabc0482917c38871ea22038b3888b472d1ee`  
**Height:** 847509  
**Transactions:** 3121  
**Flagged:** 2491 (79.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 458 | 14.7% |
| `change_detection` | 2324 | 74.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 53 | 1.7% |
| `consolidation` | 85 | 2.7% |
| `self_transfer` | 5 | 0.2% |
| `peeling_chain` | 692 | 22.2% |
| `op_return` | 774 | 24.8% |
| `round_number_payment` | 321 | 10.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2023 | 64.8% |
| batch_payment | 656 | 21.0% |
| consolidation | 85 | 2.7% |
| coinjoin | 53 | 1.7% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 301 | 9.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 125.16 |
| Median | 6878.31 |
| Mean | 11625.71 |
| Maximum | 38119.99 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9eda0ab49a84910… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7f670f6359e921… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303a3f0e2eb9f… |
| `` | batch_payment | OP_RETURN data (unknown): 58325befbaff944841b7… |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:A2E1A6772EE35A6FA7A19610D0FADA643E94…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:420127815E2AA1A7D9EA7E2CD4C0A0AE3ECC…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:20306EF13BA921AD168F113EA038398AE9C5…" |
| `` | consolidation | Consolidation: 28 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bc2189644d7d05b… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 89717 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325be1b8617afae2bf… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 546 sat (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9b262e7ed13b27… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |

---

## Block #847510

**Block Hash:** `000000000000000000011d7b9941c68375adea92193ce757c50fa484891e5230`  
**Height:** 847510  
**Transactions:** 2440  
**Flagged:** 1987 (81.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 330 | 13.5% |
| `change_detection` | 1849 | 75.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 33 | 1.4% |
| `consolidation` | 74 | 3.0% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 539 | 22.1% |
| `op_return` | 775 | 31.8% |
| `round_number_payment` | 283 | 11.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1760 | 72.1% |
| batch_payment | 361 | 14.8% |
| consolidation | 74 | 3.0% |
| coinjoin | 33 | 1.4% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 208 | 8.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1.19 |
| Median | 724.86 |
| Mean | 8753.05 |
| Maximum | 89193.95 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed801882038faf… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb0bee66e8aea26… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b4a9f243c1b0c94… |
| `` | simple_payment | OP_RETURN data (unknown): "=:e:0xefde77f8f64ae4035Be54C8Bc33369f5D3…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325beb296a01710dde… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380d0dbc3f4… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23323c0aeeff2ea… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |

---

## Block #847511

**Block Hash:** `00000000000000000002ec99af37b9e894c3c4f2105824a01e44d3c3b2f94be3`  
**Height:** 847511  
**Transactions:** 2495  
**Flagged:** 1905 (76.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 382 | 15.3% |
| `change_detection` | 1742 | 69.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 68 | 2.7% |
| `consolidation` | 86 | 3.4% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 528 | 21.2% |
| `op_return` | 660 | 26.5% |
| `round_number_payment` | 268 | 10.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1682 | 67.4% |
| batch_payment | 416 | 16.7% |
| consolidation | 86 | 3.4% |
| coinjoin | 68 | 2.7% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 240 | 9.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.00 |
| Median | 29176.75 |
| Mean | 28623.93 |
| Maximum | 70156.32 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed08c4031df8c3… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325be6696ed9e3311c… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bddfe7c66043f42… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf86f597e01cb61… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847512

**Block Hash:** `000000000000000000009f31dc13ead420511e39fee81210ffbe78c208c3e01c`  
**Height:** 847512  
**Transactions:** 3589  
**Flagged:** 2989 (83.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 794 | 22.1% |
| `change_detection` | 2584 | 72.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 55 | 1.5% |
| `consolidation` | 156 | 4.3% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 1182 | 32.9% |
| `op_return` | 425 | 11.8% |
| `round_number_payment` | 609 | 17.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2237 | 62.3% |
| batch_payment | 584 | 16.3% |
| consolidation | 156 | 4.3% |
| coinjoin | 55 | 1.5% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 554 | 15.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 23.29 |
| Median | 1854.10 |
| Mean | 11195.89 |
| Maximum | 44937.06 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a8a… |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 42 inputs → 1 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "+:BTC.BTC:" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf92fdfd3918778… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 504000 sat (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 22 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba6673daaa3b78f… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | coinjoin | CoinJoin: 3 equal outputs of 600 sat (medium confidence) |
| `` | consolidation | Consolidation: 22 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847513

**Block Hash:** `00000000000000000000d5c4ff2bcb83a73bd8820efa686c35e39f29aff4824b`  
**Height:** 847513  
**Transactions:** 3901  
**Flagged:** 3202 (82.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 712 | 18.3% |
| `change_detection` | 2894 | 74.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 66 | 1.7% |
| `consolidation` | 96 | 2.5% |
| `self_transfer` | 6 | 0.2% |
| `peeling_chain` | 1110 | 28.5% |
| `op_return` | 755 | 19.4% |
| `round_number_payment` | 536 | 13.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2517 | 64.5% |
| batch_payment | 709 | 18.2% |
| consolidation | 96 | 2.5% |
| coinjoin | 66 | 1.7% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 507 | 13.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2474.85 |
| Median | 15792.47 |
| Mean | 28520.08 |
| Maximum | 94011.48 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed9dc97079b67b… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd5a3eb0b9bc98b… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bffb95b2349d899… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0d433a501f20f01 |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.TGT:0xd8c1fe1b33f59a303c6cd8983a8d…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:A0135D789852812C8725B685D6AE615E971F…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:9B9FE57ED28EDA3167924A23AE017C009775…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:264BD9C3AA80BCC7BA064074A1808A01E51A…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:2087C9531398C48D340ED5C7E2F5DFF6E0CC…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:01BBA2E55BA07B09B23169FA692D7C7997D6…" |

---

## Block #847514

**Block Hash:** `000000000000000000000a25bedc1ebd3af675b31813c31978f67e7c8e3fbc6f`  
**Height:** 847514  
**Transactions:** 4404  
**Flagged:** 3987 (90.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 552 | 12.5% |
| `change_detection` | 3692 | 83.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 82 | 1.9% |
| `consolidation` | 121 | 2.7% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 908 | 20.6% |
| `op_return` | 2136 | 48.5% |
| `round_number_payment` | 437 | 9.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3366 | 76.4% |
| batch_payment | 496 | 11.3% |
| consolidation | 121 | 2.7% |
| coinjoin | 82 | 1.9% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 333 | 7.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 23.21 |
| Median | 11025.30 |
| Mean | 23870.59 |
| Maximum | 83204.59 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed9ab7b329cdb0… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 196561 sat (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 189596 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b930f17d0731cb3… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 7 equal outputs of 5892854 sat (high confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 88667 sat (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown):  |

---

## Block #847515

**Block Hash:** `000000000000000000033a8e1cd335e7ebf36c03cbabe4dd7ce40194f1252d87`  
**Height:** 847515  
**Transactions:** 3897  
**Flagged:** 3419 (87.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 638 | 16.4% |
| `change_detection` | 3168 | 81.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 138 | 3.5% |
| `consolidation` | 82 | 2.1% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 941 | 24.1% |
| `op_return` | 1419 | 36.4% |
| `round_number_payment` | 465 | 11.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2750 | 70.6% |
| batch_payment | 521 | 13.4% |
| consolidation | 82 | 2.1% |
| coinjoin | 138 | 3.5% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 403 | 10.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 212.06 |
| Median | 11847.32 |
| Mean | 21530.69 |
| Maximum | 70548.19 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edd18cdfdec465… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6a56d09fd373c1… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "consolidate" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2338e01b19e9c0a… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380e0ba84bf… |

---

## Block #847516

**Block Hash:** `00000000000000000001d7f800a8bb762c44f827249e4e7f8a026d5dff9de55a`  
**Height:** 847516  
**Transactions:** 3723  
**Flagged:** 3080 (82.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 609 | 16.4% |
| `change_detection` | 2851 | 76.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 104 | 2.8% |
| `consolidation` | 94 | 2.5% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 938 | 25.2% |
| `op_return` | 1126 | 30.2% |
| `round_number_payment` | 470 | 12.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2645 | 71.0% |
| batch_payment | 526 | 14.1% |
| consolidation | 94 | 2.5% |
| coinjoin | 104 | 2.8% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 349 | 9.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 70.53 |
| Median | 34790.37 |
| Mean | 33215.60 |
| Maximum | 72572.74 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edfdf49ce9a8e7… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e0e282c5bb… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb7af8e8e124189… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e0e282c5bb… |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 88667 sat (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00f4b1338a03c0de8301… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |

---

## Block #847517

**Block Hash:** `0000000000000000000141b5b767546769dad0674bc9795045433ff937f021e4`  
**Height:** 847517  
**Transactions:** 4359  
**Flagged:** 3892 (89.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 724 | 16.6% |
| `change_detection` | 3644 | 83.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 168 | 3.9% |
| `consolidation` | 93 | 2.1% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 1129 | 25.9% |
| `op_return` | 1626 | 37.3% |
| `round_number_payment` | 648 | 14.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3100 | 71.1% |
| batch_payment | 526 | 12.1% |
| consolidation | 93 | 2.1% |
| coinjoin | 168 | 3.9% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 470 | 10.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 264.92 |
| Median | 18533.14 |
| Mean | 24077.25 |
| Maximum | 69090.91 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed8f7d15f26530… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8d683c25af07d2… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown):  |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23323d0c8a0c2eb… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303b0c6c9c3dd… |
| `` | coinjoin | CoinJoin: 7 equal outputs of 59202 sat (high confidence) |
| `` | consolidation | Consolidation: 28 inputs → 1 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "=:ETH.ETH:0xc2cb51b431115c6d412b5e3f673a…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bab12771c53512e… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |

---

## Block #847518

**Block Hash:** `00000000000000000002802a5619652bd37b08f06fb843cb33520e5f572a31fb`  
**Height:** 847518  
**Transactions:** 3251  
**Flagged:** 2768 (85.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 595 | 18.3% |
| `change_detection` | 2491 | 76.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 110 | 3.4% |
| `consolidation` | 113 | 3.5% |
| `self_transfer` | 2 | 0.1% |
| `peeling_chain` | 843 | 25.9% |
| `op_return` | 828 | 25.5% |
| `round_number_payment` | 486 | 14.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2135 | 65.7% |
| batch_payment | 521 | 16.0% |
| consolidation | 113 | 3.5% |
| coinjoin | 110 | 3.4% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 370 | 11.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 59.75 |
| Median | 1094.60 |
| Mean | 5485.62 |
| Maximum | 33268.23 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a33… |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0897c98e9bd42b… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | unknown | OP_RETURN data (unknown):  |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown):  |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380b09dc2df… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bdc3a091a08098c… |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |

---

## Block #847519

**Block Hash:** `000000000000000000004d0af6ead9af9ef44d5ee71d13f706da8e7aa4053067`  
**Height:** 847519  
**Transactions:** 2983  
**Flagged:** 2420 (81.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 727 | 24.4% |
| `change_detection` | 2140 | 71.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 96 | 3.2% |
| `consolidation` | 149 | 5.0% |
| `self_transfer` | 2 | 0.1% |
| `peeling_chain` | 1090 | 36.5% |
| `op_return` | 170 | 5.7% |
| `round_number_payment` | 554 | 18.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1801 | 60.4% |
| batch_payment | 510 | 17.1% |
| consolidation | 149 | 5.0% |
| coinjoin | 96 | 3.2% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 424 | 14.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2037.76 |
| Median | 7140.03 |
| Mean | 11353.92 |
| Maximum | 35901.49 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed18cb127f9c31… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 760000 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb173cf16ce0f84… |
| `` | coinjoin | CoinJoin: 3 equal outputs of 59202 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 160000c0a23303b0faf8… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 15145 sat (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown):  |
| `` | unknown | OP_RETURN data (unknown):  |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233c016e4c50201… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233c016e4c50201… |
| `` | batch_payment | OP_RETURN data (unknown): 00e6a533821db086ef1e… |
| `` | consolidation | Consolidation: 46 inputs → 1 outputs (high confidence) |

---

## Block #847520

**Block Hash:** `000000000000000000000dd4fa20bbbfde8f014a4f85326e30f243f9c1b4ed44`  
**Height:** 847520  
**Transactions:** 3288  
**Flagged:** 2714 (82.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 803 | 24.4% |
| `change_detection` | 2411 | 73.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 91 | 2.8% |
| `consolidation` | 142 | 4.3% |
| `self_transfer` | 5 | 0.2% |
| `peeling_chain` | 1299 | 39.5% |
| `op_return` | 171 | 5.2% |
| `round_number_payment` | 612 | 18.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2029 | 61.7% |
| batch_payment | 526 | 16.0% |
| consolidation | 142 | 4.3% |
| coinjoin | 91 | 2.8% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 496 | 15.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 418.60 |
| Median | 13222.82 |
| Mean | 18778.96 |
| Maximum | 70102.31 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a4c… |
| `` | consolidation | Consolidation: 14 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2a6537c64c0b4… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 100000 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0a9a4ba21… |
| `` | consolidation | Consolidation: 38 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 9 equal outputs of 101885 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00cba933e1148080a4b1… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380e08bb459… |
| `` | simple_payment | OP_RETURN data (unknown): "=:THOR.RUNE:thor19yr79876azfrr6rsv6kfef7…" |
| `` | consolidation | Consolidation: 24 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380b8aaadbd… |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303afbfbd9e52… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847521

**Block Hash:** `00000000000000000001045018d92e15aa7115d975bc832dbf8fd0bd87923c3f`  
**Height:** 847521  
**Transactions:** 3295  
**Flagged:** 2688 (81.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 765 | 23.2% |
| `change_detection` | 2332 | 70.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 74 | 2.2% |
| `consolidation` | 147 | 4.5% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 1264 | 38.4% |
| `op_return` | 155 | 4.7% |
| `round_number_payment` | 561 | 17.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2061 | 62.5% |
| batch_payment | 516 | 15.7% |
| consolidation | 147 | 4.5% |
| coinjoin | 74 | 2.2% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 495 | 15.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 769.23 |
| Median | 2394.00 |
| Mean | 15142.53 |
| Maximum | 65010.54 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed9af9e1475dd4… |
| `` | simple_payment | OP_RETURN data (unknown): 7fe73f6299050b141cd8… |
| `` | consolidation | Consolidation: 38 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00d8da33a0128090a7f0… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b4ae9ff317373f1… |
| `` | coinjoin | CoinJoin: 11 equal outputs of 75549 sat (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "=:ETH.ETH:0x6d45f5cc72f1b4b7c1f6f22c8b52…" |
| `` | simple_payment | OP_RETURN data (unknown): "+:BTC/BTC" |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 20 equal outputs of 75549 sat (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 344080 sat (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown):  |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.USDC:0x24130c974d132a702cfb8a0121e…" |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0d8210200… |

---

## Block #847522

**Block Hash:** `000000000000000000018e2b07cd02d31010f6e9fde34f237ae2879887a1d590`  
**Height:** 847522  
**Transactions:** 3038  
**Flagged:** 2482 (81.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 771 | 25.4% |
| `change_detection` | 2216 | 72.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 169 | 5.6% |
| `consolidation` | 105 | 3.5% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 1049 | 34.5% |
| `op_return` | 170 | 5.6% |
| `round_number_payment` | 549 | 18.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1849 | 60.9% |
| batch_payment | 468 | 15.4% |
| consolidation | 105 | 3.5% |
| coinjoin | 169 | 5.6% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 444 | 14.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 17.18 |
| Median | 18443.38 |
| Mean | 27005.78 |
| Maximum | 70116.76 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed3e1065568db1… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 330546 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 11696 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |
| `` | batch_payment | OP_RETURN data (unknown): 00c4cf3354a08d0601 |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303f8eaa5dc05… |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.ETH:0xBfcCD25f4E282e2579518a340724…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:5C392615CD0C8268602AF2EB83E53F12BF73…" |
| `` | batch_payment | OP_RETURN data (unknown): 00d8da33a0128090cad2… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | coinjoin | CoinJoin: 3 equal outputs of 546 sat (low confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 10 equal outputs of 555 sat (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847523

**Block Hash:** `00000000000000000002fa09b694176fd7a41a085210eafec9f449be323cce7b`  
**Height:** 847523  
**Transactions:** 3486  
**Flagged:** 2830 (81.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 852 | 24.4% |
| `change_detection` | 2491 | 71.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 123 | 3.5% |
| `consolidation` | 109 | 3.1% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 1188 | 34.1% |
| `op_return` | 247 | 7.1% |
| `round_number_payment` | 585 | 16.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2074 | 59.5% |
| batch_payment | 614 | 17.6% |
| consolidation | 109 | 3.1% |
| coinjoin | 123 | 3.5% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 562 | 16.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2925.03 |
| Median | 8290.25 |
| Mean | 16046.67 |
| Maximum | 43008.85 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edf2f75da336bb… |
| `` | consolidation | Consolidation: 18 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0f88abf6e… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9d93e08fe49471… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c4cf3354d46101 |
| `` | batch_payment | OP_RETURN data (unknown): 160000c0a2330391d4ab… |
| `` | coinjoin | CoinJoin: 11 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 34 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 204590 sat (low confidence) |

---

## Block #847524

**Block Hash:** `00000000000000000002b87d78a862f3b8a89284d8e48f2a28545f5041ef8911`  
**Height:** 847524  
**Transactions:** 2852  
**Flagged:** 2317 (81.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 646 | 22.7% |
| `change_detection` | 2034 | 71.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 100 | 3.5% |
| `consolidation` | 108 | 3.8% |
| `self_transfer` | 8 | 0.3% |
| `peeling_chain` | 865 | 30.3% |
| `op_return` | 400 | 14.0% |
| `round_number_payment` | 423 | 14.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1821 | 63.8% |
| batch_payment | 382 | 13.4% |
| consolidation | 108 | 3.8% |
| coinjoin | 100 | 3.5% |
| self_transfer | 8 | 0.3% |
| coinbase | 1 | 0.0% |
| unknown | 432 | 15.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 44.12 |
| Median | 444.29 |
| Mean | 9367.65 |
| Maximum | 52058.63 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed7afac93829f1… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8727e3cb5592af… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b40fb0609578f18… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:C55B47130C620A3EBA6105AD1D46A3C1020A…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b549ebfa1c38c80… |
| `` | consolidation | Consolidation: 100 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |

---

## Block #847525

**Block Hash:** `000000000000000000023234bf066eb909b7994d48e2df94cde2cc167e842f80`  
**Height:** 847525  
**Transactions:** 3843  
**Flagged:** 2820 (73.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 790 | 20.6% |
| `change_detection` | 2444 | 63.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 74 | 1.9% |
| `consolidation` | 113 | 2.9% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 1167 | 30.4% |
| `op_return` | 426 | 11.1% |
| `round_number_payment` | 534 | 13.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2683 | 69.8% |
| batch_payment | 404 | 10.5% |
| consolidation | 113 | 2.9% |
| coinjoin | 74 | 1.9% |
| coinbase | 1 | 0.0% |
| unknown | 568 | 14.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 83.73 |
| Median | 13014.75 |
| Mean | 16466.20 |
| Maximum | 53219.51 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edf4463112164d… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba3ccb814caaef0… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b17f1874f96bbb0… |
| `` | batch_payment | OP_RETURN data (unknown): "=:e:0x14a3d9A4aeAf073680E9031EAc5bC93ca0…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303ba9fcea0e1… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b95ac0d3f458fad… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): c72b267a47bb326877bd… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Block #847526

**Block Hash:** `0000000000000000000281b405501ab468bddc7fcf539d90eadf4874802417e2`  
**Height:** 847526  
**Transactions:** 3749  
**Flagged:** 3026 (80.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 752 | 20.1% |
| `change_detection` | 2758 | 73.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 55 | 1.5% |
| `consolidation` | 105 | 2.8% |
| `self_transfer` | 2 | 0.1% |
| `peeling_chain` | 1596 | 42.6% |
| `op_return` | 353 | 9.4% |
| `round_number_payment` | 427 | 11.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2706 | 72.2% |
| batch_payment | 318 | 8.5% |
| consolidation | 105 | 2.8% |
| coinjoin | 55 | 1.5% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 562 | 15.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 49.04 |
| Median | 8466.99 |
| Mean | 13065.65 |
| Maximum | 41407.81 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edfdd8495a1b5d… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 26 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 83 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 257 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 44 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 69 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 53 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847527

**Block Hash:** `0000000000000000000232a7cb5a51f52c24875b65790ac38a017a42910dae6b`  
**Height:** 847527  
**Transactions:** 3809  
**Flagged:** 3312 (87.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 619 | 16.3% |
| `change_detection` | 3053 | 80.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 112 | 2.9% |
| `consolidation` | 104 | 2.7% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 1183 | 31.1% |
| `op_return` | 760 | 20.0% |
| `round_number_payment` | 424 | 11.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2460 | 64.6% |
| batch_payment | 702 | 18.4% |
| consolidation | 104 | 2.7% |
| coinjoin | 112 | 2.9% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 427 | 11.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 209.68 |
| Median | 497.24 |
| Mean | 10451.13 |
| Maximum | 44682.52 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed930f47fba4e9… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf4a7f5ab158dd9… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 127431 sat (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325befe4972d8df201… |
| `` | simple_payment | OP_RETURN data (unknown): "=:l:ltc1qk02s389cpnn5vsncxy4m5qg6neku6vp…" |
| `` | consolidation | Consolidation: 104 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 02000fba8862f308e56d… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7c9579b70c12ae… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | self_transfer | OP_RETURN data (unknown): 00c0a23303a8e8d4ea05… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847528

**Block Hash:** `00000000000000000002c4adbd1a68886bf484215a84f9a5d9775dfc1bbdf4bd`  
**Height:** 847528  
**Transactions:** 3670  
**Flagged:** 3015 (82.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 781 | 21.3% |
| `change_detection` | 2638 | 71.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 82 | 2.2% |
| `consolidation` | 143 | 3.9% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 1257 | 34.3% |
| `op_return` | 380 | 10.4% |
| `round_number_payment` | 563 | 15.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2334 | 63.6% |
| batch_payment | 599 | 16.3% |
| consolidation | 143 | 3.9% |
| coinjoin | 82 | 2.2% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 510 | 13.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 3940.07 |
| Median | 7936.88 |
| Mean | 11464.52 |
| Maximum | 26044.25 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed787db83263d6… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b62e03f913bd0eb… |
| `` | batch_payment | OP_RETURN data (unknown): 160000c0a233038accd0… |
| `` | batch_payment | OP_RETURN data (unknown): 00c4cf3354a8c30101 |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302c099b22b01 |
| `` | batch_payment | OP_RETURN data (unknown): 58325b22d335e3132d25… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2338e01d7ac9b04… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2338e01c0a8a504… |

---

## Block #847529

**Block Hash:** `00000000000000000000668c06db53080a5daefc1baaa0e973d1d67553a13da2`  
**Height:** 847529  
**Transactions:** 3439  
**Flagged:** 3030 (88.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 679 | 19.7% |
| `change_detection` | 2734 | 79.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 173 | 5.0% |
| `consolidation` | 106 | 3.1% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 859 | 25.0% |
| `op_return` | 660 | 19.2% |
| `round_number_payment` | 433 | 12.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1866 | 54.3% |
| batch_payment | 901 | 26.2% |
| consolidation | 106 | 3.1% |
| coinjoin | 173 | 5.0% |
| coinbase | 1 | 0.0% |
| unknown | 392 | 11.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 11.92 |
| Median | 7925.21 |
| Mean | 16486.02 |
| Maximum | 80432.36 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ede675a727f5b6… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b93b079ece05f4e… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302c099b22b01 |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb9e301660a8e1c… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302c099b22b01 |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303d3d4d89907… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303b1c5bbf73a… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23323c0b4c0b4db… |
| `` | consolidation | Consolidation: 15 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 2550546 sat (low confidence) |
| `` | consolidation | Consolidation: 101 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba30f1e1a3ba172… |
| `` | batch_payment | OP_RETURN data (unknown): "" |
| `` | batch_payment | OP_RETURN data (unknown): 00c0d433a501c12601 |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Block #847530

**Block Hash:** `00000000000000000000c71f76c06e8dbb83618d920740dfe79b852cc3ec9524`  
**Height:** 847530  
**Transactions:** 2688  
**Flagged:** 2366 (88.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 455 | 16.9% |
| `change_detection` | 2182 | 81.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 117 | 4.4% |
| `consolidation` | 89 | 3.3% |
| `self_transfer` | 6 | 0.2% |
| `peeling_chain` | 652 | 24.3% |
| `op_return` | 428 | 15.9% |
| `round_number_payment` | 276 | 10.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1295 | 48.2% |
| batch_payment | 914 | 34.0% |
| consolidation | 89 | 3.3% |
| coinjoin | 117 | 4.4% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 269 | 10.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 65.86 |
| Median | 6562.23 |
| Mean | 16105.40 |
| Maximum | 72233.68 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3ac1… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 27 inputs → 1 outputs (high confidence) |
| `` | self_transfer | OP_RETURN data (unknown): "=:r:thor1f6dapwtsw7jcflmjrvrt5ntu9mz7q2h…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf80caa782eb3b4… |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b93d650867463ab… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfe4941d866dc10… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (high confidence) |
| `` | consolidation | Consolidation: 109 inputs → 2 outputs (high confidence) |

---

## Block #847531

**Block Hash:** `000000000000000000033d5e47265767fbc46a72c4ad811cbbc054e698faf68c`  
**Height:** 847531  
**Transactions:** 3422  
**Flagged:** 3039 (88.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 535 | 15.6% |
| `change_detection` | 2769 | 80.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 81 | 2.4% |
| `consolidation` | 106 | 3.1% |
| `self_transfer` | 6 | 0.2% |
| `peeling_chain` | 695 | 20.3% |
| `op_return` | 1384 | 40.4% |
| `round_number_payment` | 331 | 9.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2341 | 68.4% |
| batch_payment | 564 | 16.5% |
| consolidation | 106 | 3.1% |
| coinjoin | 81 | 2.4% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 325 | 9.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 372.47 |
| Median | 20417.32 |
| Mean | 27491.35 |
| Maximum | 56699.50 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed974810fe26b1… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1fd1e58470a432… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b08671f0ae5dba8… |
| `` | consolidation | Consolidation: 95 inputs → 2 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233c016d8040100… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233c016d8040100… |
| `` | batch_payment | OP_RETURN data (unknown): 00ddae33cb05e8070100… |
| `` | batch_payment | OP_RETURN data (unknown): 00ddae33cb05e8070100… |

---

## Block #847532

**Block Hash:** `00000000000000000000a3c195e16680f21066bc08aa191d8101294538ca0d53`  
**Height:** 847532  
**Transactions:** 2322  
**Flagged:** 2047 (88.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 338 | 14.6% |
| `change_detection` | 1897 | 81.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 50 | 2.2% |
| `consolidation` | 52 | 2.2% |
| `self_transfer` | 8 | 0.3% |
| `peeling_chain` | 462 | 19.9% |
| `op_return` | 1000 | 43.1% |
| `round_number_payment` | 212 | 9.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1659 | 71.4% |
| batch_payment | 324 | 14.0% |
| consolidation | 52 | 2.2% |
| coinjoin | 50 | 2.2% |
| self_transfer | 6 | 0.3% |
| coinbase | 1 | 0.0% |
| unknown | 230 | 9.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 125.79 |
| Median | 1935.71 |
| Mean | 13007.14 |
| Maximum | 86640.81 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9eda7f4128718da… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b78cdd132f97bdb… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1e57cf5a3fc7d2… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 6 equal outputs of 47250 sat (high confidence) |
| `` | consolidation | Consolidation: 16 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b477f992656b93d… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 546 sat (medium confidence) |

---

## Block #847533

**Block Hash:** `000000000000000000032f8118487151a17d20ac3d5b2b5305f01df6c112f557`  
**Height:** 847533  
**Transactions:** 4484  
**Flagged:** 4348 (97.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 175 | 3.9% |
| `change_detection` | 4268 | 95.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 16 | 0.4% |
| `consolidation` | 45 | 1.0% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 372 | 8.3% |
| `op_return` | 2766 | 61.7% |
| `round_number_payment` | 163 | 3.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3119 | 69.6% |
| batch_payment | 1202 | 26.8% |
| consolidation | 45 | 1.0% |
| coinjoin | 16 | 0.4% |
| coinbase | 1 | 0.0% |
| unknown | 101 | 2.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 57.12 |
| Median | 34173.11 |
| Mean | 28142.47 |
| Maximum | 59215.63 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ede0d74a8978df… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 148fa83314f407 |
| `` | simple_payment | OP_RETURN data (unknown): 148fa83314f407 |
| `` | simple_payment | OP_RETURN data (unknown): 148fa83314f407 |
| `` | simple_payment | OP_RETURN data (unknown): 148fa83314f407 |
| `` | simple_payment | OP_RETURN data (unknown): 148fa83314f407 |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |

---

## Block #847534

**Block Hash:** `00000000000000000002f578c83c34160c1987fad4f887609a0f9047a5b75f3e`  
**Height:** 847534  
**Transactions:** 4881  
**Flagged:** 4584 (93.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 245 | 5.0% |
| `change_detection` | 4451 | 91.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 41 | 0.8% |
| `consolidation` | 60 | 1.2% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 521 | 10.7% |
| `op_return` | 3576 | 73.3% |
| `round_number_payment` | 224 | 4.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4199 | 86.0% |
| batch_payment | 437 | 9.0% |
| consolidation | 60 | 1.2% |
| coinjoin | 41 | 0.8% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 138 | 2.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 132.78 |
| Median | 26918.70 |
| Mean | 32914.49 |
| Maximum | 71640.71 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed78f23eb448ef… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b770477402ff6aa… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8549cc8056918d… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 14acdd3314c406 |
| `` | batch_payment | OP_RETURN data (unknown): 58325b78dc4b2b495d1f… |
| `` | coinjoin | CoinJoin: 8 equal outputs of 3495615 sat (high confidence) |
| `` | coinjoin | CoinJoin: 9 equal outputs of 37670570 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 020704d599e384e6b98f… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #847535

**Block Hash:** `00000000000000000002d671aa23997c00e65a8af2b1ba0380bad9893d1ed421`  
**Height:** 847535  
**Transactions:** 4202  
**Flagged:** 3885 (92.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 420 | 10.0% |
| `change_detection` | 3702 | 88.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 82 | 2.0% |
| `consolidation` | 75 | 1.8% |
| `self_transfer` | 9 | 0.2% |
| `peeling_chain` | 656 | 15.6% |
| `op_return` | 2425 | 57.7% |
| `round_number_payment` | 305 | 7.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3253 | 77.4% |
| batch_payment | 524 | 12.5% |
| consolidation | 75 | 1.8% |
| coinjoin | 82 | 2.0% |
| self_transfer | 6 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 261 | 6.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 438.13 |
| Median | 9019.00 |
| Mean | 27452.83 |
| Maximum | 81461.65 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed33030baab589… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfc00a715dc2abb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b300132717d1aed… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | simple_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | simple_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | simple_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | simple_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | simple_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | simple_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | simple_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | simple_payment | OP_RETURN data (unknown): 14a9dd3314be01 |
| `` | coinjoin | CoinJoin: 3 equal outputs of 131896 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302c099b22b02… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233028087a70e02… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2338e01ffabe705… |

---

## Block #847536

**Block Hash:** `00000000000000000003402e1cdd3d82fcd94f5d1efc48a2999b766b03992577`  
**Height:** 847536  
**Transactions:** 3391  
**Flagged:** 2108 (62.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 576 | 17.0% |
| `change_detection` | 1835 | 54.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 67 | 2.0% |
| `consolidation` | 120 | 3.5% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 877 | 25.9% |
| `op_return` | 249 | 7.3% |
| `round_number_payment` | 398 | 11.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2417 | 71.3% |
| batch_payment | 416 | 12.3% |
| consolidation | 120 | 3.5% |
| coinjoin | 67 | 2.0% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 369 | 10.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 355.44 |
| Median | 7933.73 |
| Mean | 15335.88 |
| Maximum | 51249.37 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed807dd11bc8fd… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b625c374d6ad9c0… |
| `` | coinjoin | CoinJoin: 3 equal outputs of 30280 sat (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 66480 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b93cfd88bdc3d35… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302808ece1c02… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303eaec98ce08… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303a8abb3b08f… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2332390aad2fdd4… |
| `` | batch_payment | OP_RETURN data (unknown): 00aaa3338101d09ae697… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 34 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847537

**Block Hash:** `000000000000000000007613c24a10334c912f4a7d5d00132c9fd31e88729b3e`  
**Height:** 847537  
**Transactions:** 4229  
**Flagged:** 4051 (95.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 236 | 5.6% |
| `change_detection` | 3947 | 93.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 76 | 1.8% |
| `consolidation` | 46 | 1.1% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 350 | 8.3% |
| `op_return` | 3308 | 78.2% |
| `round_number_payment` | 188 | 4.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3667 | 86.7% |
| batch_payment | 308 | 7.3% |
| consolidation | 46 | 1.1% |
| coinjoin | 76 | 1.8% |
| coinbase | 1 | 0.0% |
| unknown | 131 | 3.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 424.84 |
| Median | 34081.15 |
| Mean | 30904.68 |
| Maximum | 69639.64 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3aa7… |
| `` | consolidation | Consolidation: 16 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0d434a138b2746… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba7298756612ed5… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303faf0968835… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b75f3ec15fdaeb4… |
| `` | batch_payment | OP_RETURN data (unknown): "=:BSC.BNB:0x5c35a38ee18Ed2Ca64B5C064c488…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bbec680df74031b… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bda27557b41d6b4… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00b3b733db02808095e7… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |

---

## Block #847538

**Block Hash:** `00000000000000000002e2ef0fd73bdbb1b29c8682e693c610ad5bf472569979`  
**Height:** 847538  
**Transactions:** 3899  
**Flagged:** 2982 (76.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 493 | 12.6% |
| `change_detection` | 2733 | 70.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 80 | 2.1% |
| `consolidation` | 99 | 2.5% |
| `self_transfer` | 6 | 0.2% |
| `peeling_chain` | 661 | 17.0% |
| `op_return` | 1533 | 39.3% |
| `round_number_payment` | 336 | 8.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2989 | 76.7% |
| batch_payment | 432 | 11.1% |
| consolidation | 99 | 2.5% |
| coinjoin | 80 | 2.1% |
| self_transfer | 6 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 292 | 7.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 127.88 |
| Median | 11046.52 |
| Mean | 22443.90 |
| Maximum | 69616.58 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edee5599ed81a3… |
| `` | batch_payment | OP_RETURN data (unknown): 58325be12b5e7f51c056… |
| `` | coinjoin | CoinJoin: 9 equal outputs of 900146 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1cd079114d5e66… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 148 inputs → 2 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303d4aa94b027… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302c099b22b02… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e999c39f… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380e0ba84bf… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e8bde4f7d5… |
| `` | batch_payment | OP_RETURN data (unknown): 009ea333940990c80201… |
| `` | batch_payment | OP_RETURN data (unknown): 009ea333940990c80201… |

---

## Block #847539

**Block Hash:** `000000000000000000024fa4f0f4826e881805f02c0f76e4a5ee1c5da3071161`  
**Height:** 847539  
**Transactions:** 5796  
**Flagged:** 5505 (95.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 182 | 3.1% |
| `change_detection` | 5428 | 93.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 36 | 0.6% |
| `consolidation` | 36 | 0.6% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 394 | 6.8% |
| `op_return` | 4876 | 84.1% |
| `round_number_payment` | 156 | 2.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5299 | 91.4% |
| batch_payment | 315 | 5.4% |
| consolidation | 36 | 0.6% |
| coinjoin | 36 | 0.6% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 108 | 1.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 270.19 |
| Median | 8901.40 |
| Mean | 10990.43 |
| Maximum | 27327.55 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed8ec93d9ee612… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb84d8f68cd24a9… |
| `` | consolidation | Consolidation: 64 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 91 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bc997c069a00afe… |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 500000000 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325be36bba27cffaa9… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "52335" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 9a54baa736aa30695b1b… |
| `` | simple_payment | OP_RETURN data (unknown): 9a54baa736aa30695b1b… |
| `` | self_transfer | OP_RETURN data (unknown): fb263c22082042dad80a… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (low confidence) |

---

## Block #847540

**Block Hash:** `000000000000000000014cee1aad2586e8a8ab221a902cd21a68d1e976abecca`  
**Height:** 847540  
**Transactions:** 6081  
**Flagged:** 5939 (97.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 118 | 1.9% |
| `change_detection` | 5876 | 96.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 20 | 0.3% |
| `consolidation` | 33 | 0.5% |
| `self_transfer` | 3 | 0.0% |
| `peeling_chain` | 237 | 3.9% |
| `op_return` | 5631 | 92.6% |
| `round_number_payment` | 98 | 1.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5771 | 94.9% |
| batch_payment | 191 | 3.1% |
| consolidation | 33 | 0.5% |
| coinjoin | 20 | 0.3% |
| self_transfer | 3 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 62 | 1.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1.13 |
| Median | 7282.58 |
| Mean | 19036.17 |
| Maximum | 75415.87 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edac083cd59bd7… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bca50e87f130a5f… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bdaf2aa4427608d… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | unknown | OP_RETURN data (unknown): "=:ETH.ETH:0xa1853F031115753116cddE5e88Bb…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b30bc5e75388f23… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 6 equal outputs of 600 sat (high confidence) |
| `` | consolidation | Consolidation: 19 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | coinjoin | CoinJoin: 4 equal outputs of 436954 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (low confidence) |

---

## Block #847541

**Block Hash:** `000000000000000000019a2a28f55eacf6a59e5c1be7801d7a6043c482e5949f`  
**Height:** 847541  
**Transactions:** 6293  
**Flagged:** 6116 (97.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 169 | 2.7% |
| `change_detection` | 6037 | 95.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 26 | 0.4% |
| `consolidation` | 33 | 0.5% |
| `self_transfer` | 8 | 0.1% |
| `peeling_chain` | 354 | 5.6% |
| `op_return` | 5584 | 88.7% |
| `round_number_payment` | 107 | 1.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5817 | 92.4% |
| batch_payment | 302 | 4.8% |
| consolidation | 33 | 0.5% |
| coinjoin | 26 | 0.4% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 112 | 1.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1751.98 |
| Median | 7522.59 |
| Mean | 7225.49 |
| Maximum | 12104.79 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edc2af4a94167a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b595f6f301f0a8b… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b469793adb25639… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 17 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380a0b787e9… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b95ee66c4fe68f8… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 24 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 268 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 8 equal outputs of 5313 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd8e22d305969db… |

---

## Block #847542

**Block Hash:** `00000000000000000001a10aad3a9b9cd408affd8a6b8d27ae637e68d342086d`  
**Height:** 847542  
**Transactions:** 4162  
**Flagged:** 3401 (81.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 312 | 7.5% |
| `change_detection` | 3269 | 78.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 69 | 1.7% |
| `consolidation` | 61 | 1.5% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 474 | 11.4% |
| `op_return` | 2420 | 58.1% |
| `round_number_payment` | 196 | 4.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3392 | 81.5% |
| batch_payment | 466 | 11.2% |
| consolidation | 61 | 1.5% |
| coinjoin | 69 | 1.7% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 172 | 4.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 3267.67 |
| Median | 13697.07 |
| Mean | 11110.42 |
| Maximum | 16366.51 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed65a0ef0e29b5… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5c79f5521d8f09… |
| `` | consolidation | Consolidation: 58 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b170ff9e0e4e4ea… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302808ece1c02… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 84672 sat (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Block #847543

**Block Hash:** `000000000000000000018ddbbeb5725b54f7d3a6d8ce70448f9ef19b5724d6e1`  
**Height:** 847543  
**Transactions:** 4038  
**Flagged:** 3160 (78.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 365 | 9.0% |
| `change_detection` | 2985 | 73.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 65 | 1.6% |
| `consolidation` | 79 | 2.0% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 586 | 14.5% |
| `op_return` | 1940 | 48.0% |
| `round_number_payment` | 287 | 7.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3230 | 80.0% |
| batch_payment | 463 | 11.5% |
| consolidation | 79 | 2.0% |
| coinjoin | 65 | 1.6% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 197 | 4.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 16.82 |
| Median | 13578.50 |
| Mean | 20820.06 |
| Maximum | 89841.74 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed86840ced12ed… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd00ad7e043e4aa… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd9d628f87448c5… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330388b0dc8916… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380e0ba84bf… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380d0dbc3f4… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e8bde4f7d5… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #847544

**Block Hash:** `0000000000000000000301e087f8f2979eb58faad529278cdbcb8ccd90ca4073`  
**Height:** 847544  
**Transactions:** 5054  
**Flagged:** 3801 (75.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 402 | 8.0% |
| `change_detection` | 3607 | 71.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 52 | 1.0% |
| `consolidation` | 74 | 1.5% |
| `self_transfer` | 6 | 0.1% |
| `peeling_chain` | 652 | 12.9% |
| `op_return` | 2532 | 50.1% |
| `round_number_payment` | 285 | 5.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4187 | 82.8% |
| batch_payment | 507 | 10.0% |
| consolidation | 74 | 1.5% |
| coinjoin | 52 | 1.0% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 228 | 4.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 94.15 |
| Median | 18233.79 |
| Mean | 15149.61 |
| Maximum | 24036.70 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edd7cbbdd1252a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb2676e4a8ac5ac… |
| `` | batch_payment | OP_RETURN data (unknown): 58325be753b4b65f2468… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 587227 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23319ca13020000… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303808cc4efca… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bc6200fcd859b90… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847545

**Block Hash:** `000000000000000000008ef528c7e13540f35838a0c0b7a61dd142299534f327`  
**Height:** 847545  
**Transactions:** 5133  
**Flagged:** 4775 (93.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 381 | 7.4% |
| `change_detection` | 4568 | 89.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 39 | 0.8% |
| `consolidation` | 87 | 1.7% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 677 | 13.2% |
| `op_return` | 3627 | 70.7% |
| `round_number_payment` | 251 | 4.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4273 | 83.2% |
| batch_payment | 517 | 10.1% |
| consolidation | 86 | 1.7% |
| coinjoin | 39 | 0.8% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 214 | 4.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 109.72 |
| Median | 17731.78 |
| Mean | 21301.28 |
| Maximum | 71646.15 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed4a620727a91e… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd415f92663f5fc… |
| `` | consolidation | Consolidation: 36 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 27 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 42 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 9 equal outputs of 24580 sat (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b71286bc4ad713b… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 18 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303b887e3fdca… |

---

## Block #847546

**Block Hash:** `0000000000000000000358441884a292de4c2e317f925a9da42b087addc113cb`  
**Height:** 847546  
**Transactions:** 4555  
**Flagged:** 3451 (75.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 349 | 7.7% |
| `change_detection` | 3340 | 73.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 95 | 2.1% |
| `consolidation` | 42 | 0.9% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 445 | 9.8% |
| `op_return` | 2280 | 50.1% |
| `round_number_payment` | 203 | 4.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3568 | 78.3% |
| batch_payment | 694 | 15.2% |
| consolidation | 42 | 0.9% |
| coinjoin | 95 | 2.1% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 152 | 3.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 3.64 |
| Median | 1268.14 |
| Mean | 13559.02 |
| Maximum | 55139.82 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a12… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5a9badfb94ba14… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2f1bf2237f4362… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0b9afe452… |
| `` | coinjoin | CoinJoin: 8 equal outputs of 15021 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303a0e5f5f4ca… |
| `` | coinjoin | CoinJoin: 3 equal outputs of 136546 sat (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |

---

## Block #847547

**Block Hash:** `0000000000000000000311e38e75aada0d97b78928465c54fcad1f647de66221`  
**Height:** 847547  
**Transactions:** 3628  
**Flagged:** 3333 (91.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 177 | 4.9% |
| `change_detection` | 3244 | 89.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 43 | 1.2% |
| `consolidation` | 41 | 1.1% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 268 | 7.4% |
| `op_return` | 2721 | 75.0% |
| `round_number_payment` | 106 | 2.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3067 | 84.5% |
| batch_payment | 399 | 11.0% |
| consolidation | 41 | 1.1% |
| coinjoin | 43 | 1.2% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 74 | 2.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 44.09 |
| Median | 13774.32 |
| Mean | 21403.85 |
| Maximum | 61899.20 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed1e5492f1c58c… |
| `` | batch_payment | OP_RETURN data (unknown): 00d8da33a01280d8dd8a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325befc50705173515… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 35046 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 49 equal outputs of 5227 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b12b226d7323ea7… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303bece91dcd7… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb8b552e8d12719… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |

---

## Block #847548

**Block Hash:** `0000000000000000000247841cf08aff2f584491f7738e5a41df8188a72d9901`  
**Height:** 847548  
**Transactions:** 4749  
**Flagged:** 4118 (86.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 408 | 8.6% |
| `change_detection` | 3885 | 81.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 53 | 1.1% |
| `consolidation` | 97 | 2.0% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 698 | 14.7% |
| `op_return` | 2875 | 60.5% |
| `round_number_payment` | 318 | 6.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3937 | 82.9% |
| batch_payment | 424 | 8.9% |
| consolidation | 97 | 2.0% |
| coinjoin | 53 | 1.1% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 235 | 4.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 58.19 |
| Median | 12574.66 |
| Mean | 17880.34 |
| Maximum | 56733.72 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edb893a93e6f22… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf82a2d7e82e3fb… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "+:BTC/BTC::0" |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.USDC:0x3f34159645f0a20a313c3bc8dd9…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2bed924af227d… |
| `` | batch_payment | OP_RETURN data (unknown): 0086dd33cd03ecb80b01 |
| `` | coinjoin | CoinJoin: 2 equal outputs of 131859 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c4cf3354e6d50201 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | batch_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | coinjoin | CoinJoin: 4 equal outputs of 25000 sat (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0b6f2e574… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380ed99ce9a… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |

---

## Block #847549

**Block Hash:** `000000000000000000019b957714ca4305fcbb672ca2027a57cad1bcf89f5f8e`  
**Height:** 847549  
**Transactions:** 4208  
**Flagged:** 3863 (91.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 540 | 12.8% |
| `change_detection` | 3646 | 86.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 140 | 3.3% |
| `consolidation` | 82 | 1.9% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 676 | 16.1% |
| `op_return` | 2381 | 56.6% |
| `round_number_payment` | 367 | 8.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3216 | 76.4% |
| batch_payment | 491 | 11.7% |
| consolidation | 82 | 1.9% |
| coinjoin | 140 | 3.3% |
| coinbase | 1 | 0.0% |
| unknown | 278 | 6.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 48.18 |
| Median | 23983.41 |
| Mean | 22832.47 |
| Maximum | 75311.56 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed25525b49ac48… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf8436b736d7d1d… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |
| `` | simple_payment | OP_RETURN data (unknown): 1486dd3314cd03 |

---

## Block #847550

**Block Hash:** `000000000000000000029cfedbafdab25dc6ac01fed3834924be40080781683d`  
**Height:** 847550  
**Transactions:** 4172  
**Flagged:** 3950 (94.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 277 | 6.6% |
| `change_detection` | 3839 | 92.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 89 | 2.1% |
| `consolidation` | 47 | 1.1% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 556 | 13.3% |
| `op_return` | 3139 | 75.2% |
| `round_number_payment` | 198 | 4.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3357 | 80.5% |
| batch_payment | 533 | 12.8% |
| consolidation | 47 | 1.1% |
| coinjoin | 89 | 2.1% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 143 | 3.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 10.81 |
| Median | 5811.92 |
| Mean | 12536.39 |
| Maximum | 54653.16 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a44… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9f9b0dd0bcd3f2… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bc0f6e7b7a06558… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e0b793dbfa… |
| `` | self_transfer | OP_RETURN data (unknown): 00c0a2330380e0ba84bf… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e8bde4f7d5… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 46 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8ccaec98452f79… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 546 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 6 equal outputs of 546 sat (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |

---

## Block #847551

**Block Hash:** `000000000000000000007175c9cb7d084e0187e1951d295c392d37a2afd46175`  
**Height:** 847551  
**Transactions:** 5608  
**Flagged:** 5317 (94.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 302 | 5.4% |
| `change_detection` | 5183 | 92.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 66 | 1.2% |
| `consolidation` | 67 | 1.2% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 429 | 7.6% |
| `op_return` | 4476 | 79.8% |
| `round_number_payment` | 220 | 3.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5043 | 89.9% |
| batch_payment | 272 | 4.9% |
| consolidation | 67 | 1.2% |
| coinjoin | 66 | 1.2% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 157 | 2.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 45.81 |
| Median | 3897.34 |
| Mean | 13324.12 |
| Maximum | 62387.11 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed6a577979dc93… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b015804770a7ed5… |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b4cb697c4379281… |
| `` | simple_payment | OP_RETURN data (unknown): "-:BTC/BTC:10000" |
| `` | simple_payment | OP_RETURN data (unknown): 2b053af03a4252a08783… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b220b7705fda90f… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 95746 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 10 equal outputs of 546 sat (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847552

**Block Hash:** `00000000000000000001eb1ac360665ee1e14248fddf37805cdb0cb53856cf8b`  
**Height:** 847552  
**Transactions:** 4205  
**Flagged:** 4012 (95.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 345 | 8.2% |
| `change_detection` | 3866 | 91.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 66 | 1.6% |
| `consolidation` | 72 | 1.7% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 580 | 13.8% |
| `op_return` | 3101 | 73.7% |
| `round_number_payment` | 243 | 5.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3494 | 83.1% |
| batch_payment | 384 | 9.1% |
| consolidation | 72 | 1.7% |
| coinjoin | 66 | 1.6% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 185 | 4.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 4.07 |
| Median | 32929.40 |
| Mean | 27188.63 |
| Maximum | 56094.67 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed84f91ee323d6… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9e1052c3a955eb… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | batch_payment | OP_RETURN data (unknown): 58325bce2f94f75087d1… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | self_transfer | OP_RETURN data (unknown): 00f4b1338a03cae69d0c… |
| `` | coinjoin | CoinJoin: 3 equal outputs of 546 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00ddae33cb05e8070100… |
| `` | batch_payment | OP_RETURN data (unknown): 00ddae33cb05e8070100… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233039e83d699bb… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 009ea333940990c80201… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Block #847553

**Block Hash:** `00000000000000000001c21f9bc50a9e4f31aa2607b31c59064680dbb89c1076`  
**Height:** 847553  
**Transactions:** 6994  
**Flagged:** 6889 (98.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 120 | 1.7% |
| `change_detection` | 6821 | 97.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 36 | 0.5% |
| `consolidation` | 18 | 0.3% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 387 | 5.5% |
| `op_return` | 6524 | 93.3% |
| `round_number_payment` | 102 | 1.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 6547 | 93.6% |
| batch_payment | 317 | 4.5% |
| consolidation | 18 | 0.3% |
| coinjoin | 36 | 0.5% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 71 | 1.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.73 |
| Median | 9941.17 |
| Mean | 10364.15 |
| Maximum | 53996.22 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed51c23db91b30… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bdfcbda5bf35266… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bc674abbc4dd730… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2331ca0c21e0200… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf54eda39773af7… |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 133403 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:3FC436492D7C4FC348577D8F01C16C7C422E…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |

---

## Block #847554

**Block Hash:** `00000000000000000000122ddb6aa73352fafb89d6780929071b9a601b42144c`  
**Height:** 847554  
**Transactions:** 5587  
**Flagged:** 5465 (97.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 199 | 3.6% |
| `change_detection` | 5367 | 96.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 61 | 1.1% |
| `consolidation` | 38 | 0.7% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 312 | 5.6% |
| `op_return` | 4892 | 87.6% |
| `round_number_payment` | 157 | 2.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5155 | 92.3% |
| batch_payment | 219 | 3.9% |
| consolidation | 38 | 0.7% |
| coinjoin | 61 | 1.1% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 111 | 2.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 13.96 |
| Median | 477.28 |
| Mean | 9819.88 |
| Maximum | 77516.82 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed92c8476dc0ea… |
| `` | self_transfer | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |
| `` | simple_payment | OP_RETURN data (unknown): 14c0a2331441 |

---

## Block #847555

**Block Hash:** `00000000000000000000e571ee4eb7b5b63b2a0c6e9d42371f4ebec900e3353d`  
**Height:** 847555  
**Transactions:** 5000  
**Flagged:** 4845 (96.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 253 | 5.1% |
| `change_detection` | 4734 | 94.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 98 | 2.0% |
| `consolidation` | 56 | 1.1% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 397 | 7.9% |
| `op_return` | 4141 | 82.8% |
| `round_number_payment` | 237 | 4.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4460 | 89.2% |
| batch_payment | 262 | 5.2% |
| consolidation | 56 | 1.1% |
| coinjoin | 98 | 2.0% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 122 | 2.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 581.38 |
| Median | 15077.57 |
| Mean | 21499.08 |
| Maximum | 72430.90 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed561811f37b5a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b4a1b5c185ae784… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b29965f1f9bc119… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330280f3df1902… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303ae93adbe94… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #847556

**Block Hash:** `0000000000000000000146bc3a366e776b034a20cb77c21ab78573d07e27eaa6`  
**Height:** 847556  
**Transactions:** 6221  
**Flagged:** 6061 (97.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 283 | 4.5% |
| `change_detection` | 5950 | 95.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 64 | 1.0% |
| `consolidation` | 52 | 0.8% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 494 | 7.9% |
| `op_return` | 5229 | 84.1% |
| `round_number_payment` | 233 | 3.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5602 | 90.0% |
| batch_payment | 346 | 5.6% |
| consolidation | 52 | 0.8% |
| coinjoin | 64 | 1.0% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 155 | 2.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 15410.88 |
| Median | 16739.65 |
| Mean | 31223.05 |
| Maximum | 61518.62 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed7acc31218963… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b46a6f661f949fa… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b34d57203875c28… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380988be499… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #847557

**Block Hash:** `0000000000000000000141547b5934b859544b9628f0d321173f6f34f3add109`  
**Height:** 847557  
**Transactions:** 2886  
**Flagged:** 2467 (85.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 743 | 25.7% |
| `change_detection` | 2145 | 74.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 182 | 6.3% |
| `consolidation` | 128 | 4.4% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 941 | 32.6% |
| `op_return` | 348 | 12.1% |
| `round_number_payment` | 531 | 18.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1568 | 54.3% |
| batch_payment | 558 | 19.3% |
| consolidation | 128 | 4.4% |
| coinjoin | 182 | 6.3% |
| coinbase | 1 | 0.0% |
| unknown | 449 | 15.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1024.76 |
| Median | 31375.67 |
| Mean | 36426.41 |
| Maximum | 72255.39 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed91a24697caaa… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 600 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b93cbf39844e38a… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 985546 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1142e7281f4e25… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 84525 sat (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 96168f0dcf7a466d50e8… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330388c4eecd8d… |
| `` | batch_payment | OP_RETURN data (unknown): 6f59e4d6de6cce61d2cf… |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 78 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 82 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380df9683cb… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380d0dbc3f4… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380a4e2b78a… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303c0e9a0bdcb… |

---

## Block #847558

**Block Hash:** `0000000000000000000324c32312d67497e71573029c0b457a9561300766a6ad`  
**Height:** 847558  
**Transactions:** 2502  
**Flagged:** 2303 (92.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 392 | 15.7% |
| `change_detection` | 2146 | 85.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 146 | 5.8% |
| `consolidation` | 74 | 3.0% |
| `self_transfer` | 7 | 0.3% |
| `peeling_chain` | 612 | 24.5% |
| `op_return` | 1161 | 46.4% |
| `round_number_payment` | 320 | 12.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1618 | 64.7% |
| batch_payment | 451 | 18.0% |
| consolidation | 74 | 3.0% |
| coinjoin | 146 | 5.8% |
| self_transfer | 5 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 207 | 8.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 6.89 |
| Median | 61356.85 |
| Mean | 43025.31 |
| Maximum | 78252.17 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a5b… |
| `` | unknown | OP_RETURN data (unknown): "0xe52e11e92f245f911680a5c268dcb09ac43d9a…" |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 108255 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b51ffcc52c7b1ac… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b35048a1a4f1e35… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "=:BSC.BNB:0xa5e33afe3f52877cdcc22da05aad…" |
| `` | simple_payment | OP_RETURN data (unknown): "=:BSC.BNB:0xc187720261c01e0c9c4c23c15572…" |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380a79ddafb… |
| `` | consolidation | Consolidation: 71 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #847559

**Block Hash:** `000000000000000000034b1151c2c97b70b4d7cf71c6ce65a359f5544e17ed96`  
**Height:** 847559  
**Transactions:** 6031  
**Flagged:** 5870 (97.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 282 | 4.7% |
| `change_detection` | 5740 | 95.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 55 | 0.9% |
| `consolidation` | 57 | 0.9% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 361 | 6.0% |
| `op_return` | 5254 | 87.1% |
| `round_number_payment` | 182 | 3.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5525 | 91.6% |
| batch_payment | 225 | 3.7% |
| consolidation | 56 | 0.9% |
| coinjoin | 55 | 0.9% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 167 | 2.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2616.94 |
| Median | 15236.64 |
| Mean | 23003.87 |
| Maximum | 71770.30 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edfede9d6f8f49… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b79f1f4ba9121cb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba20bd9d2546102… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): c2e8b4626cbba3760940… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233038080f985d4… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847560

**Block Hash:** `00000000000000000001627f708b498f1268babe0d600f8271f0bffbb47a2eea`  
**Height:** 847560  
**Transactions:** 3585  
**Flagged:** 3314 (92.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 463 | 12.9% |
| `change_detection` | 3097 | 86.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 127 | 3.5% |
| `consolidation` | 95 | 2.6% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 648 | 18.1% |
| `op_return` | 2021 | 56.4% |
| `round_number_payment` | 404 | 11.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2757 | 76.9% |
| batch_payment | 322 | 9.0% |
| consolidation | 95 | 2.6% |
| coinjoin | 127 | 3.5% |
| coinbase | 1 | 0.0% |
| unknown | 283 | 7.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 107.67 |
| Median | 5704.66 |
| Mean | 15937.52 |
| Maximum | 78767.00 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edae6df0bf89a7… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5f4599bf8c5379… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b42eeef4dc4c746… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 123396 sat (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 21 inputs → 2 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 55b3b8befdc63fedd296… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23302cef5ce1702… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a233039ae0e3f841… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23323d0b8e78ad7… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847561

**Block Hash:** `00000000000000000000ea0900bc371774aab4fba75bceb4e42a3e57f5069c49`  
**Height:** 847561  
**Transactions:** 4009  
**Flagged:** 3772 (94.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 362 | 9.0% |
| `change_detection` | 3607 | 90.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 56 | 1.4% |
| `consolidation` | 70 | 1.7% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 624 | 15.6% |
| `op_return` | 2678 | 66.8% |
| `round_number_payment` | 330 | 8.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3332 | 83.1% |
| batch_payment | 323 | 8.1% |
| consolidation | 70 | 1.7% |
| coinjoin | 56 | 1.4% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 224 | 5.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 44.51 |
| Median | 16539.20 |
| Mean | 21108.24 |
| Maximum | 71296.79 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edfec4d47c21ec… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5545e892be8afe… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8b060de86f524c… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown): eb8cb099957f6838b598… |
| `` | self_transfer | OP_RETURN data (unknown): 00c0a23303a0fe9085cb… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e0dee581cb… |
| `` | self_transfer | OP_RETURN data (unknown): 00aaa3338101c0ddb7c9… |
| `` | batch_payment | OP_RETURN data (unknown): 00ddae33cb05b8170100… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 546 sat (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847562

**Block Hash:** `0000000000000000000265d8dee1f290561536a1c7c547e9d10ef086e2fa304b`  
**Height:** 847562  
**Transactions:** 5423  
**Flagged:** 5208 (96.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 323 | 6.0% |
| `change_detection` | 5085 | 93.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 69 | 1.3% |
| `consolidation` | 54 | 1.0% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 576 | 10.6% |
| `op_return` | 4298 | 79.3% |
| `round_number_payment` | 264 | 4.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4792 | 88.4% |
| batch_payment | 315 | 5.8% |
| consolidation | 54 | 1.0% |
| coinjoin | 69 | 1.3% |
| coinbase | 1 | 0.0% |
| unknown | 192 | 3.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 556.15 |
| Median | 26718.27 |
| Mean | 25804.61 |
| Maximum | 51364.50 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edc53223c1b810… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1859d66cb074be… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 3237019 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b04028f72b257ec… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 90 inputs → 2 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "=:e:0x46723d4c532a686a276afd42f561543177…" |
| `` | simple_payment | OP_RETURN data (unknown): d73a4e633aa675103c9e… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380988be499… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 45 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847563

**Block Hash:** `0000000000000000000280f3b71883c90fdb133dc5f1667762e088e11c505dad`  
**Height:** 847563  
**Transactions:** 6290  
**Flagged:** 6197 (98.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 92 | 1.5% |
| `change_detection` | 6156 | 97.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 22 | 0.3% |
| `consolidation` | 19 | 0.3% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 452 | 7.2% |
| `op_return` | 5896 | 93.7% |
| `round_number_payment` | 97 | 1.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5807 | 92.3% |
| batch_payment | 384 | 6.1% |
| consolidation | 19 | 0.3% |
| coinjoin | 22 | 0.3% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 56 | 0.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1807.43 |
| Median | 38405.44 |
| Mean | 36825.39 |
| Maximum | 90618.10 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ede7b036d3dce6… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b36e6aac0fdda07… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf1e95c28e03ccd… |
| `` | coinjoin | CoinJoin: 8 equal outputs of 13083996 sat (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "=:e:0xb97990644e2bd571e184d10a63ccd17a2e…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b64cc9749c65771… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 43 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown):  |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |

---

## Block #847564

**Block Hash:** `00000000000000000001ef5d14f942b987fdf4a3a8400fa3a6f4dc7ccee394d4`  
**Height:** 847564  
**Transactions:** 4654  
**Flagged:** 4545 (97.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 137 | 2.9% |
| `change_detection` | 4486 | 96.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 37 | 0.8% |
| `consolidation` | 26 | 0.6% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 352 | 7.6% |
| `op_return` | 4154 | 89.3% |
| `round_number_payment` | 136 | 2.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4288 | 92.1% |
| batch_payment | 212 | 4.6% |
| consolidation | 26 | 0.6% |
| coinjoin | 37 | 0.8% |
| coinbase | 1 | 0.0% |
| unknown | 90 | 1.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 141.93 |
| Median | 9301.79 |
| Mean | 24130.19 |
| Maximum | 77775.26 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a43… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 120851 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 119879 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 107546 sat (low confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 100282 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 112781 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bc59227ff06bae6… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 839505 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7747743d2098eb… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 0379c43f80a6cdfc5728… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380a0b787e9… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2d8f4bdf1ae4c7… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #847565

**Block Hash:** `00000000000000000002cbe17c36eaf8beda926edcb33fdd73df0f973e386d25`  
**Height:** 847565  
**Transactions:** 7410  
**Flagged:** 7391 (99.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 34 | 0.5% |
| `change_detection` | 7372 | 99.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 9 | 0.1% |
| `consolidation` | 11 | 0.1% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 261 | 3.5% |
| `op_return` | 7296 | 98.5% |
| `round_number_payment` | 38 | 0.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 7124 | 96.1% |
| batch_payment | 249 | 3.4% |
| consolidation | 11 | 0.1% |
| coinjoin | 9 | 0.1% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 15 | 0.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1156.54 |
| Median | 6012.13 |
| Mean | 17836.02 |
| Maximum | 70856.18 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed67b712ee058a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb69e8613e8286b… |
| `` | consolidation | Consolidation: 92 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 6 equal outputs of 546 sat (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |

---

## Block #847566

**Block Hash:** `000000000000000000035c72213c7608dcf93d639c5a3f155d190697ae8a45a8`  
**Height:** 847566  
**Transactions:** 5461  
**Flagged:** 5359 (98.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 200 | 3.7% |
| `change_detection` | 5261 | 96.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 53 | 1.0% |
| `consolidation` | 35 | 0.6% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 345 | 6.3% |
| `op_return` | 4800 | 87.9% |
| `round_number_payment` | 166 | 3.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5033 | 92.2% |
| batch_payment | 219 | 4.0% |
| consolidation | 35 | 0.6% |
| coinjoin | 53 | 1.0% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 116 | 2.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 154.78 |
| Median | 9794.02 |
| Mean | 10809.91 |
| Maximum | 34283.30 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ede3847322961e… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b931cccdc8fb6b2… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b47dbe6f4e823d2… |
| `` | batch_payment | OP_RETURN data (unknown): "=:e:0x5269a052684145a5d3fa8ed41d4de1e647…" |
| `` | consolidation | Consolidation: 205 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 44b59b4afdf7fcbcc3e5… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | unknown | OP_RETURN data (unknown): "=:r:thor1mg3qzukg8vxnfc3u2va9sz45hhw35aj…" |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b217e044b6a8820… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 160000c0a2330380f896… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300 sat (low confidence) |

---

## Block #847567

**Block Hash:** `00000000000000000003324c4c7c57f82eca83a7e19a5dfe6751ea01108e5d18`  
**Height:** 847567  
**Transactions:** 4236  
**Flagged:** 4047 (95.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 364 | 8.6% |
| `change_detection` | 3913 | 92.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 84 | 2.0% |
| `consolidation` | 57 | 1.3% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 501 | 11.8% |
| `op_return` | 3125 | 73.8% |
| `round_number_payment` | 259 | 6.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3478 | 82.1% |
| batch_payment | 457 | 10.8% |
| consolidation | 57 | 1.3% |
| coinjoin | 84 | 2.0% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 157 | 3.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7178.55 |
| Median | 21419.91 |
| Mean | 21294.04 |
| Maximum | 40903.41 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed6cf375fdf458… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3f35b3d33bfbfe… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b436debb1938659… |
| `` | simple_payment | OP_RETURN data (unknown): "=:BSC.BNB:0xc187720261c01e0c9c4c23c15572…" |
| `` | simple_payment | OP_RETURN data (unknown): "=:BSC.BNB:0xa5e33afe3f52877cdcc22da05aad…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 4f31bf6cfb495fc87164… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e8b8f3e403… |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 38 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847568

**Block Hash:** `00000000000000000002da5a1b3f10efb843de19a375d02cf6392ddbfcdd074b`  
**Height:** 847568  
**Transactions:** 3406  
**Flagged:** 2956 (86.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 810 | 23.8% |
| `change_detection` | 2577 | 75.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 132 | 3.9% |
| `consolidation` | 203 | 6.0% |
| `self_transfer` | 2 | 0.1% |
| `peeling_chain` | 1002 | 29.4% |
| `op_return` | 979 | 28.7% |
| `round_number_payment` | 520 | 15.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2151 | 63.2% |
| batch_payment | 530 | 15.6% |
| consolidation | 203 | 6.0% |
| coinjoin | 132 | 3.9% |
| coinbase | 1 | 0.0% |
| unknown | 389 | 11.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2.62 |
| Median | 37089.05 |
| Mean | 31562.44 |
| Maximum | 64346.98 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3a10… |
| `` | consolidation | Consolidation: 58 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 30 inputs → 1 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |
| `` | simple_payment | OP_RETURN data (unknown): 14d9dc331453 |

---

## Block #847569

**Block Hash:** `00000000000000000002c7ac2eb544c73955e09d47d82de194c5f23be395dbe9`  
**Height:** 847569  
**Transactions:** 3457  
**Flagged:** 3249 (94.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 409 | 11.8% |
| `change_detection` | 3074 | 88.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 146 | 4.2% |
| `consolidation` | 66 | 1.9% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 630 | 18.2% |
| `op_return` | 2072 | 59.9% |
| `round_number_payment` | 372 | 10.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2639 | 76.3% |
| batch_payment | 379 | 11.0% |
| consolidation | 66 | 1.9% |
| coinjoin | 146 | 4.2% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 225 | 6.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 30.75 |
| Median | 61543.27 |
| Mean | 37660.20 |
| Maximum | 62011.27 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edc66e2d9780d1… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1fa2787e3b2a23… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 21983000 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 750000 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00d8da33a0128088a5a9… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bdc93c299ff1f32… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:62C26617AED7F7B4490CF358E05D9E73023F…" |
| `` | consolidation | Consolidation: 26 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847570

**Block Hash:** `000000000000000000027d60d069813d620a9f7140e43f30e3b29f26f7346619`  
**Height:** 847570  
**Transactions:** 5236  
**Flagged:** 5072 (96.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 261 | 5.0% |
| `change_detection` | 4978 | 95.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 61 | 1.2% |
| `consolidation` | 60 | 1.1% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 439 | 8.4% |
| `op_return` | 4453 | 85.0% |
| `round_number_payment` | 183 | 3.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4697 | 89.7% |
| batch_payment | 277 | 5.3% |
| consolidation | 60 | 1.1% |
| coinjoin | 61 | 1.2% |
| coinbase | 1 | 0.0% |
| unknown | 140 | 2.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2366.75 |
| Median | 20050.10 |
| Mean | 25350.41 |
| Maximum | 86134.90 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed5a8a0c3bb4d6… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bcc0af2edf9fef0… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7514d600f73650… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0428b519da6a78… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:8C120466E552D1CFB616D6389516DDD39D4C…" |
| `` | unknown | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | unknown | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | unknown | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | unknown | OP_RETURN data (omni): 6f6d6e69000000000000… |

---

## Block #847571

**Block Hash:** `00000000000000000000a3b6649072161784e4b09dcd878f9a6d126574bde4c6`  
**Height:** 847571  
**Transactions:** 6868  
**Flagged:** 6775 (98.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 173 | 2.5% |
| `change_detection` | 6709 | 97.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 32 | 0.5% |
| `consolidation` | 28 | 0.4% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 247 | 3.6% |
| `op_return` | 6413 | 93.4% |
| `round_number_payment` | 123 | 1.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 6540 | 95.2% |
| batch_payment | 160 | 2.3% |
| consolidation | 28 | 0.4% |
| coinjoin | 32 | 0.5% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 106 | 1.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2094.03 |
| Median | 19522.77 |
| Mean | 23776.94 |
| Maximum | 57728.52 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed90ffd248a8ac… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0a6ae79f6b701b… |
| `` | consolidation | Consolidation: 36 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bc5562539631a7c… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 83238 sat (low confidence) |
| `` | consolidation | Consolidation: 22 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 3618502 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfaa333625bc089… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #847572

**Block Hash:** `0000000000000000000128737dbd88e289864cef856c456a59bed8ec665090f0`  
**Height:** 847572  
**Transactions:** 6324  
**Flagged:** 6106 (96.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 144 | 2.3% |
| `change_detection` | 6068 | 96.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 15 | 0.2% |
| `consolidation` | 16 | 0.3% |
| `self_transfer` | 7 | 0.1% |
| `peeling_chain` | 380 | 6.0% |
| `op_return` | 5823 | 92.1% |
| `round_number_payment` | 95 | 1.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5905 | 93.4% |
| batch_payment | 298 | 4.7% |
| consolidation | 16 | 0.3% |
| coinjoin | 15 | 0.2% |
| self_transfer | 6 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 83 | 1.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 15.97 |
| Median | 3072.72 |
| Mean | 12125.46 |
| Maximum | 61534.26 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edeb20eb26d3d5… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd19d53f6234d0c… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2c1e1520f7f5b9… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380d0dbc3f4… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9bd848f8ee62fb… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (omni): "omni          Av3@" |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | batch_payment | OP_RETURN data (omni): 6f6d6e69000000000000… |

---

## Block #847573

**Block Hash:** `000000000000000000008aae93eac021968d2014e1afb5a5ca4488ae699f9bd5`  
**Height:** 847573  
**Transactions:** 6933  
**Flagged:** 6834 (98.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 145 | 2.1% |
| `change_detection` | 6780 | 97.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 24 | 0.3% |
| `consolidation` | 24 | 0.3% |
| `self_transfer` | 3 | 0.0% |
| `peeling_chain` | 221 | 3.2% |
| `op_return` | 6512 | 93.9% |
| `round_number_payment` | 99 | 1.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 6655 | 96.0% |
| batch_payment | 155 | 2.2% |
| consolidation | 24 | 0.3% |
| coinjoin | 24 | 0.3% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 72 | 1.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 5.24 |
| Median | 153.10 |
| Mean | 5657.05 |
| Maximum | 43154.10 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed8363673486ac… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b91b303dc7b9831… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b635d1f596faf26… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00aaa3338101c0cba8de… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb394bb70b66566… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | unknown | OP_RETURN data (unknown):  |
| `` | unknown | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | unknown | OP_RETURN data (omni): "omni          Aej`" |
| `` | unknown | OP_RETURN data (omni): 6f6d6e69000000000000… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |

---

## Block #847574

**Block Hash:** `00000000000000000002028b0ac839fccbae3edfd10b9ad6ca2ed225e899c145`  
**Height:** 847574  
**Transactions:** 5851  
**Flagged:** 5801 (99.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 182 | 3.1% |
| `change_detection` | 5733 | 98.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 8 | 0.1% |
| `consolidation` | 46 | 0.8% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 242 | 4.1% |
| `op_return` | 5491 | 93.8% |
| `round_number_payment` | 88 | 1.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 5532 | 94.5% |
| batch_payment | 170 | 2.9% |
| consolidation | 46 | 0.8% |
| coinjoin | 8 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 94 | 1.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2808.05 |
| Median | 17120.64 |
| Mean | 20608.56 |
| Maximum | 71955.81 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed73b7db34ca32… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3f4b1e533c36ce… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b827eee7065ebeb… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 78624 sat (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Block #847575

**Block Hash:** `00000000000000000000fd55f2cb1e98a01808fc7f25f9a3ab8af441ac2f8304`  
**Height:** 847575  
**Transactions:** 6638  
**Flagged:** 6544 (98.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 220 | 3.3% |
| `change_detection` | 6464 | 97.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 33 | 0.5% |
| `consolidation` | 36 | 0.5% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 508 | 7.7% |
| `op_return` | 6072 | 91.5% |
| `round_number_payment` | 149 | 2.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 6039 | 91.0% |
| batch_payment | 406 | 6.1% |
| consolidation | 36 | 0.5% |
| coinjoin | 33 | 0.5% |
| coinbase | 1 | 0.0% |
| unknown | 123 | 1.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 59.17 |
| Median | 1435.88 |
| Mean | 8146.28 |
| Maximum | 47881.59 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edad19da4f89e0… |
| `` | batch_payment | OP_RETURN data (unknown): 00c4cf3354904e01 |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7de51e0ce6bd97… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bbb5348233e1825… |
| `` | simple_payment | OP_RETURN data (unknown): "=:BSC.BNB:0xa5e33afe3f52877cdcc22da05aad…" |
| `` | batch_payment | OP_RETURN data (unknown): 00aaa3338101c09fd5ff… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #847576

**Block Hash:** `000000000000000000015476a806e685eed63b96d23dd9f2355da0eb053b3570`  
**Height:** 847576  
**Transactions:** 4966  
**Flagged:** 4836 (97.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 247 | 5.0% |
| `change_detection` | 4730 | 95.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 43 | 0.9% |
| `consolidation` | 61 | 1.2% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 313 | 6.3% |
| `op_return` | 4079 | 82.1% |
| `round_number_payment` | 162 | 3.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4370 | 88.0% |
| batch_payment | 370 | 7.5% |
| consolidation | 61 | 1.2% |
| coinjoin | 43 | 0.9% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 120 | 2.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 129.89 |
| Median | 26560.79 |
| Mean | 30276.66 |
| Maximum | 76082.06 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 52534b424c4f434b3acb… |
| `` | simple_payment | OP_RETURN data (unknown): "0x5ce699a39170cbdee9195989f59069b18f1268…" |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0c8b51d2cb573b… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5f986d565eb17d… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303e8bde4f7d5… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 6 equal outputs of 3428068 sat (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Methodology

All heuristics are probabilistic. Results indicate *likelihood*, not certainty.
See `APPROACH.md` for full confidence models and known limitations.

---
*Generated by Sherlock — Week 3, Summer of Bitcoin 2026*
