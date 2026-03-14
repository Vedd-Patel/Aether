# Sherlock Chain Analysis Report

**Source file:** `blk05051.dat`  
**Generated:** 2026-03-14 16:57:34 UTC  
**Blocks in file:** 78  
**Total transactions analyzed:** 256523  

---

## Summary

| Metric | Value |
|--------|-------|
| Blocks parsed | 78 |
| Transactions analyzed | 256523 |
| Flagged transactions | 209082 (81.5%) |
| Heuristics applied | 9 |
| Entity clusters found | 50 |
| Addresses in top clusters | 4884 |

**Heuristics applied:** `cioh`, `change_detection`, `address_reuse`, `coinjoin`, `consolidation`, `self_transfer`, `peeling_chain`, `op_return`, `round_number_payment`

---

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.00 |
| Median | 1323.31 |
| Mean | 2748.08 |
| Maximum | 89552.49 |

## Script Type Distribution (Outputs)

| Script Type | Count | Description |
|-------------|-------|-------------|
| `p2wpkh` | 332347 | Native SegWit — modern wallets (bc1q…) |
| `p2tr` | 203377 | Taproot — newest, max privacy (bc1p…) |
| `p2sh` | 38169 | Pay-to-Script-Hash — legacy smart contracts (3…) |
| `p2pkh` | 53920 | Legacy — original Bitcoin addresses (1…) |
| `p2wsh` | 16582 | Native SegWit script — multisig / complex (bc1q…) |
| `op_return` | 99034 | Data inscription — burns value, stores data |
| `unknown` | 218 | Unrecognised locking pattern |

---

## Entity Clusters (Transitive CIOH)

> These clusters are derived by applying the Common Input Ownership Heuristic transitively across all transactions in the file using a Union-Find structure. If tx A links addresses {1,2} and tx B links {2,3}, all three are grouped into one cluster — the same inference that professional chain analysis tools make.

**All results are probabilistic.** CoinJoin transactions are excluded from CIOH clustering, but false positives are still possible.

| Rank | Cluster ID | Addresses | Transactions |
|------|------------|-----------|-------------|
| 1 | `raw:ea03373a5773` | 4521 | 31487 |
| 2 | `raw:4cfb09887eda` | 37 | 37 |
| 3 | `raw:4ec1081e5074` | 30 | 13 |
| 4 | `raw:e3bcf3bf0ded` | 24 | 1 |
| 5 | `wpkh:f98402e7622` | 15 | 2 |
| 6 | `pkh:ec691c0014a3` | 14 | 1 |
| 7 | `raw:29368408ae31` | 14 | 1 |
| 8 | `raw:001e312697b7` | 9 | 1 |
| 9 | `raw:b570bfe7d59a` | 8 | 1 |
| 10 | `raw:b2b401eddd7a` | 8 | 1 |
| 11 | `raw:173953eddd66` | 8 | 1 |
| 12 | `raw:1c001427ac4d` | 8 | 1 |
| 13 | `raw:8c0c97933b1b` | 8 | 1 |
| 14 | `raw:e287b423dccd` | 8 | 1 |
| 15 | `raw:7297005c9582` | 7 | 1 |
| 16 | `raw:008697651c00` | 7 | 1 |
| 17 | `raw:044d7542fd81` | 7 | 1 |
| 18 | `raw:98edcb440089` | 7 | 1 |
| 19 | `raw:b7e9343d11eb` | 6 | 1 |
| 20 | `pkh:2f1c0014ff65` | 6 | 1 |

_… 30 more clusters not shown. See `entity_clusters` in the JSON report._

### Top 5 Cluster Address Samples

**Cluster #1** (`raw:ea03373a5773`) — 4521 addresses, 31487 transactions  
- `pkh:04d301edde120081e089b4db2300adfb8786f190`
- `pkh:0a28512009924b06c943891d15dee96b64f1a973`
- `pkh:0c285120cda36b2e4db5ec4c48a2cfa668a83ed8`
- `pkh:0d1c001473d17821e6aa416010b67326091e2f4a`
- `pkh:0d285120fcbf535dec936229af496258fb4c8c05`
- _… 4516 more addresses_

**Cluster #2** (`raw:4cfb09887eda`) — 37 addresses, 37 transactions  
- `raw:4cfb09887edacde49762a0a0f68066d534189bdf916800a52f28512036495ecc`
- `raw:4cfb09887edacde49762a0a0f68066d534189bdf917600a52f28512036495ecc`
- `raw:4cfb09887edacde49762a0a0f68066d534189bdf917800a52f28512036495ecc`
- `raw:4cfb09887edacde49762a0a0f68066d534189bdf9c3c00a52f28512036495ecc`
- `raw:4cfb09887edacde49762a0a0f68066d534189bdf9f4600a52f28512036495ecc`
- _… 32 more addresses_

**Cluster #3** (`raw:4ec1081e5074`) — 30 addresses, 13 transactions  
- `raw:1ca4ed9730008124285120bac79fbf9313b2041d9cc9e1fe407d6a4d1d33a449`
- `raw:1ca4edaf18008124285120bac79fbf9313b2041d9cc9e1fe407d6a4d1d33a449`
- `raw:1ca4edaf34008124285120bac79fbf9313b2041d9cc9e1fe407d6a4d1d33a449`
- `raw:1ca4edb460008124285120bac79fbf9313b2041d9cc9e1fe407d6a4d1d33a449`
- `raw:1ca4edb778008124285120bac79fbf9313b2041d9cc9e1fe407d6a4d1d33a449`
- _… 25 more addresses_

**Cluster #4** (`raw:e3bcf3bf0ded`) — 24 addresses, 1 transactions  
- `raw:5be3bcf3bf0dedaa6200a8ae1f1c00145fbae474d68929801084f1`
- `raw:5be3bcf3bf0dedae5000a8be671c00145fbae474d68929801084f1`
- `raw:5be3bcf3bf0dedae5000a8fe0b1c00145fbae474d68929801084f1`
- `raw:5be3bcf3bf0dedae5c00a8fe0b1c00145fbae474d68929801084f1`
- `raw:5be3bcf3bf0dedb36000acff2f1c00145fbae474d68929801084f1`
- _… 19 more addresses_

**Cluster #5** (`wpkh:f98402e7622`) — 15 addresses, 2 transactions  
- `raw:0081d11b2851208329bcb1ac4f7f1f9f2bf5caccb5c6a71c11608dd450b3b7d1`
- `raw:1c0014f98402e76220080cf9247d2c21ddd314af558b99ed82600081241c0014`
- `raw:1c0014f98402e76220080cf9247d2c21ddd314af558b99ed8b100081241c0014`
- `raw:1c0014f98402e76220080cf9247d2c21ddd314af558b99ed8c040081241c0014`
- `raw:1c0014f98402e76220080cf9247d2c21ddd314af558b99ed965e0081241c0014`
- _… 10 more addresses_

---

## Block #907139

**Block Hash:** `0000000000000000000075a3f6e5fdb1993c1ad03b3cd8e033eeacfd63316e11`  
**Height:** 907139  
**Transactions:** 3056  
**Flagged:** 2150 (70.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 720 | 23.6% |
| `change_detection` | 1947 | 63.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 51 | 1.7% |
| `consolidation` | 88 | 2.9% |
| `self_transfer` | 7 | 0.2% |
| `peeling_chain` | 1204 | 39.4% |
| `op_return` | 113 | 3.7% |
| `round_number_payment` | 387 | 12.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2033 | 66.5% |
| batch_payment | 316 | 10.3% |
| consolidation | 88 | 2.9% |
| coinjoin | 51 | 1.7% |
| coinbase | 1 | 0.0% |
| unknown | 567 | 18.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 275.25 |
| Median | 1879.43 |
| Mean | 6739.52 |
| Maximum | 50939.84 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed7e7587dc44e9… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b429899160aa0be… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "7jC:to:USDT(ERC20):0xb46604a9d03f0c1eeed…" |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "F7M:to:XRP:r4vUJKJZyLAXPNNNc4gYuhzEFptdX…" |
| `` | batch_payment | OP_RETURN data (unknown): "0Py:to:TRX:TMxcRYTj6SQ1Z7ubxBSzCrg5v4XNf…" |
| `` | batch_payment | OP_RETURN data (unknown): "zGq:to:USDT(TRON):TMb9vewADLrht7hSUyNvre…" |
| `` | batch_payment | OP_RETURN data (unknown): "zGF:to:USDT(TRON):TGhKw8v3ijXpSmjeyArH95…" |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 160200c0a2330380eee0… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b429899160aa0be… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 564 sat (high confidence) |

---

## Block #907163

**Block Hash:** `0000000000000000000057b3b8c86beb357f225e3d0402bb1d620f71cfc847b2`  
**Height:** 907163  
**Transactions:** 3981  
**Flagged:** 3084 (77.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 976 | 24.5% |
| `change_detection` | 2803 | 70.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 40 | 1.0% |
| `consolidation` | 131 | 3.3% |
| `self_transfer` | 9 | 0.2% |
| `peeling_chain` | 1739 | 43.7% |
| `op_return` | 89 | 2.2% |
| `round_number_payment` | 538 | 13.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2603 | 65.4% |
| batch_payment | 434 | 10.9% |
| consolidation | 131 | 3.3% |
| coinjoin | 40 | 1.0% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 767 | 19.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1.53 |
| Median | 1619.82 |
| Mean | 2557.33 |
| Maximum | 35467.84 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed88ab292f2b82… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 45 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2332380e0ceabdd… |
| `` | consolidation | Consolidation: 21 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 20 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 19 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "YAX:to:TRX:TTDPzNSUubWgxCnMgMiunQN9rTQ6c…" |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf254b7f25fa650… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "mkq:to:USDT(BSC):0xB9dF3Dc0f126dB003fE6B…" |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 101 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 286 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "9yB:to:XRP:rHMq5pZ9iMMXDof45fa1GApQqcsdo…" |

---

## Block #907155

**Block Hash:** `0000000000000000000091a00c78db1709fcda19ade3aa219d236cb2353749fe`  
**Height:** 907155  
**Transactions:** 3960  
**Flagged:** 3221 (81.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 965 | 24.4% |
| `change_detection` | 2913 | 73.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 44 | 1.1% |
| `consolidation` | 117 | 3.0% |
| `self_transfer` | 11 | 0.3% |
| `peeling_chain` | 1869 | 47.2% |
| `op_return` | 108 | 2.7% |
| `round_number_payment` | 495 | 12.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2630 | 66.4% |
| batch_payment | 393 | 9.9% |
| consolidation | 117 | 3.0% |
| coinjoin | 44 | 1.1% |
| self_transfer | 8 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 767 | 19.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.23 |
| Median | 1587.55 |
| Mean | 3417.20 |
| Maximum | 64132.72 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edfbf1037c633f… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3d78526c824ec9… |
| `` | batch_payment | OP_RETURN data (unknown): "from:3.899ETH:0xBcAE2716c5DF96CFB01f4396…" |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3d78526c824ec9… |
| `` | consolidation | Consolidation: 149 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3d78526c824ec9… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3d78526c824ec9… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3d78526c824ec9… |
| `` | batch_payment | OP_RETURN data (unknown): 000114046902d2a391c8… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8192ec82d08b8080… |
| `` | consolidation | Consolidation: 144 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3d78526c824ec9… |

---

## Block #907142

**Block Hash:** `000000000000000000020889ea22c15d7c74dd329db8a7e58ec798653d05b37f`  
**Height:** 907142  
**Transactions:** 443  
**Flagged:** 286 (64.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 66 | 14.9% |
| `change_detection` | 211 | 47.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 4 | 0.9% |
| `consolidation` | 11 | 2.5% |
| `self_transfer` | 2 | 0.5% |
| `peeling_chain` | 95 | 21.4% |
| `op_return` | 8 | 1.8% |
| `round_number_payment` | 79 | 17.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 250 | 56.4% |
| batch_payment | 125 | 28.2% |
| consolidation | 11 | 2.5% |
| coinjoin | 4 | 0.9% |
| self_transfer | 2 | 0.5% |
| coinbase | 1 | 0.2% |
| unknown | 50 | 11.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2.42 |
| Median | 1958.63 |
| Mean | 7564.44 |
| Maximum | 69082.22 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edd3782438a029… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 11 equal outputs of 330 sat (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "to:USDT(ERC20):0xc320e17147846Bf2a7DA4Ee…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 600 sat (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "CC  ;" |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2332dc9ab7e04 |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00d88f35f81188a40102 |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 21 inputs → 1 outputs (high confidence) |

---

## Block #907141

**Block Hash:** `00000000000000000001c6ec635f239ddd638c23661ff739730b833b0b0cdb07`  
**Height:** 907141  
**Transactions:** 1566  
**Flagged:** 1190 (76.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 392 | 25.0% |
| `change_detection` | 1043 | 66.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 23 | 1.5% |
| `consolidation` | 55 | 3.5% |
| `self_transfer` | 12 | 0.8% |
| `peeling_chain` | 673 | 43.0% |
| `op_return` | 60 | 3.8% |
| `round_number_payment` | 212 | 13.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 939 | 60.0% |
| batch_payment | 222 | 14.2% |
| consolidation | 55 | 3.5% |
| coinjoin | 23 | 1.5% |
| self_transfer | 5 | 0.3% |
| coinbase | 1 | 0.1% |
| unknown | 321 | 20.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 20.05 |
| Median | 1278.50 |
| Mean | 2024.00 |
| Maximum | 43031.01 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed9bac043fbd3b… |
| `` | batch_payment | OP_RETURN data (unknown): "JX0:to:BNB(BSC):0x5E45831C410b42EbfA3915…" |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b4670ed12589d4e… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b4670ed12589d4e… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 199 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 17 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "0xD:to:XRP:rHPPAK1GKdGXQSSPpAuZHxrtYwtVS…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b4670ed12589d4e… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907170

**Block Hash:** `00000000000000000001ce6e85caa9bc91a698e85b77c6b875e1b5984ec1db5d`  
**Height:** 907170  
**Transactions:** 2966  
**Flagged:** 2306 (77.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 709 | 23.9% |
| `change_detection` | 2080 | 70.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 22 | 0.7% |
| `consolidation` | 107 | 3.6% |
| `self_transfer` | 8 | 0.3% |
| `peeling_chain` | 1195 | 40.3% |
| `op_return` | 210 | 7.1% |
| `round_number_payment` | 356 | 12.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1968 | 66.4% |
| batch_payment | 333 | 11.2% |
| consolidation | 107 | 3.6% |
| coinjoin | 22 | 0.7% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 531 | 17.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 10.47 |
| Median | 1715.00 |
| Mean | 2186.78 |
| Maximum | 39002.13 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed24a0dcd81d75… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "6Sk:to:XRP:raLkzeZaZKh1u66Yq7Erfy97fy6nU…" |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 50 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "159794" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0301255605ae35… |
| `` | batch_payment | OP_RETURN data (unknown): 11010e939781711fd075… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "Bk6:to:USDT(TRON):TMTnhJZCNPrR4Zqks5tdrb…" |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 27 equal outputs of 546 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0301255605ae35… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "XCD:to:USDT(TRON):TWGmrfDRGUXctid8qyjoS3…" |

---

## Block #907158

**Block Hash:** `000000000000000000018e1ee0e668a27279ded3816a8075eaf0489438ba049c`  
**Height:** 907158  
**Transactions:** 2711  
**Flagged:** 1985 (73.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 625 | 23.1% |
| `change_detection` | 1787 | 65.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 36 | 1.3% |
| `consolidation` | 76 | 2.8% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 1107 | 40.8% |
| `op_return` | 67 | 2.5% |
| `round_number_payment` | 369 | 13.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1801 | 66.4% |
| batch_payment | 293 | 10.8% |
| consolidation | 76 | 2.8% |
| coinjoin | 36 | 1.3% |
| coinbase | 1 | 0.0% |
| unknown | 504 | 18.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 872.91 |
| Median | 2702.35 |
| Mean | 10306.73 |
| Maximum | 74353.83 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed9b4f9224f9c3… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | simple_payment | OP_RETURN data (unknown): 6d0647defd54e124a0ab… |
| `` | consolidation | Consolidation: 46 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb3858ac68cef51… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "3wu:to:BNB(BSC):0xEEf034Ed05B11D5168Bff0…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb3858ac68cef51… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb3858ac68cef51… |
| `` | batch_payment | OP_RETURN data (unknown): "NX3:to:USDT(TRON):TRNaKbGPxFXoDdtEYFebkX…" |
| `` | batch_payment | OP_RETURN data (unknown): "mKo:to:ETH:0x4a930e0b134c279b2193fb1619b…" |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb3858ac68cef51… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb3858ac68cef51… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907154

**Block Hash:** `00000000000000000001634942d8a0410e1b38f49756b7fd078ecf436f0fbfe4`  
**Height:** 907154  
**Transactions:** 3752  
**Flagged:** 3008 (80.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 749 | 20.0% |
| `change_detection` | 2798 | 74.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 37 | 1.0% |
| `consolidation` | 88 | 2.3% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 1640 | 43.7% |
| `op_return` | 80 | 2.1% |
| `round_number_payment` | 584 | 15.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2489 | 66.3% |
| batch_payment | 574 | 15.3% |
| consolidation | 88 | 2.3% |
| coinjoin | 37 | 1.0% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 562 | 15.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 240.09 |
| Median | 30622.74 |
| Mean | 30622.74 |
| Maximum | 61005.39 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed5fc555e90f61… |
| `` | consolidation | Consolidation: 24 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "DJF:to:LTC:ltc1qxx8qeh0682av3y9wzf39mena…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 2609 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "GIA:to:SOL:8Zh7hvKQcBzdKLZPP41nxtA4i8E14…" |
| `` | consolidation | Consolidation: 41 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 43 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 44 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 41 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 32 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "p4m:to:USDT(TRON):TTDYGk99pFM7nQEHPWpTtc…" |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "159751" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b916bf2d42559b9… |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 33000 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 0038147ff010786d415b… |

---

## Block #907167

**Block Hash:** `0000000000000000000074298f91afa3644a47ed1e2f1a9e9692603e27dfdae7`  
**Height:** 907167  
**Transactions:** 2930  
**Flagged:** 2222 (75.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 707 | 24.1% |
| `change_detection` | 1973 | 67.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 46 | 1.6% |
| `consolidation` | 115 | 3.9% |
| `self_transfer` | 7 | 0.2% |
| `peeling_chain` | 1160 | 39.6% |
| `op_return` | 261 | 8.9% |
| `round_number_payment` | 333 | 11.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1952 | 66.6% |
| batch_payment | 285 | 9.7% |
| consolidation | 115 | 3.9% |
| coinjoin | 46 | 1.6% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 527 | 18.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 9.63 |
| Median | 1572.98 |
| Mean | 2824.48 |
| Maximum | 29247.89 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 7379730366c203a2fa20… |
| `` | batch_payment | OP_RETURN data (unknown): "C7M:to:USDT(TRON):TDoN4zju9AVD3yv7zwb4VN…" |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9ab09788e54c51… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 170000 sat (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9ab09788e54c51… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "GeG:to:USDT(TRON):TUyKfywNVkbda7cQrwzD1G…" |
| `` | batch_payment | OP_RETURN data (unknown): "FeV:to:USDT(TRON):TMnbEWbRJviGSvA6YZN6fe…" |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9ab09788e54c51… |
| `` | simple_payment | OP_RETURN data (unknown): "to:SOL:5gaotohNZGYURRr6t18h5mMsifS6tETsx…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "from:1168.0887USDT(TRON):TLvF6XRDgWi96Ey…" |
| `` | batch_payment | OP_RETURN data (unknown): "from:0.265741LTC:M87iwhrXJSb3SHQ2FVnFLGY…" |

---

## Block #907112

**Block Hash:** `0000000000000000000018dd20562a601f8dafd5207663f4803da66119d6dc36`  
**Height:** 907112  
**Transactions:** 3449  
**Flagged:** 2934 (85.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 424 | 12.3% |
| `change_detection` | 2793 | 81.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 42 | 1.2% |
| `consolidation` | 57 | 1.7% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 2272 | 65.9% |
| `op_return` | 1620 | 47.0% |
| `round_number_payment` | 291 | 8.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1282 | 37.2% |
| batch_payment | 1741 | 50.5% |
| consolidation | 57 | 1.7% |
| coinjoin | 42 | 1.2% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 325 | 9.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 624.80 |
| Median | 1939.74 |
| Mean | 8879.26 |
| Maximum | 47364.65 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed1669216c9f06… |
| `` | batch_payment | OP_RETURN data (unknown): "5TK:to:BNB(BSC):0xbdf8999aaff7e03e613ea0…" |
| `` | batch_payment | OP_RETURN data (unknown): "i5J:to:SOL:3YhZq5sGK3GRcVkmAZEh2MjXkKGdT…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325be3048faddd9254… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "oAt:to:XRP:rHvC9zo2e862PW6kgqaNiKHq2v8w1…" |
| `` | batch_payment | OP_RETURN data (unknown): "Jz5:to:USDT(TRON):TKuyYoH7cUzJ4htx6Bs7bB…" |
| `` | batch_payment | OP_RETURN data (unknown): "ksB:to:SOL:9ghSRFaJnN44vwTyWh9PMDFuuxPwU…" |
| `` | batch_payment | OP_RETURN data (unknown): "epQ:to:BNB(BSC):0x4918835e7C151a1DB80164…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325be3048faddd9254… |
| `` | batch_payment | OP_RETURN data (unknown): "=:l:ltc1qe5dkwuqr3jc76g8lx9z7gyru5dqpl88…" |
| `` | consolidation | Consolidation: 43 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 330 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "=:l:ltc1qe5qj2zqz445gcpu2rxx75u6z7vqrt0c…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "7cl:to:XRP:rHrZVw7xjy15YPY7FxbFViHDgrQWM…" |
| `` | batch_payment | OP_RETURN data (unknown): "VLE:to:TRX:TBNGfd6FLcg7Tfi8Y677j6SWajsvr…" |
| `` | batch_payment | OP_RETURN data (unknown): "DK1:to:USDT(TRON):TGQxLRv5nFuJXvgpqUjKuk…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:C3602BD1ABEFBA06FBC06CFBD666A2C2A853…" |

---

## Block #907164

**Block Hash:** `000000000000000000015783954bc152771d5b1e61520a3c7c9c6e0821a342d0`  
**Height:** 907164  
**Transactions:** 3826  
**Flagged:** 2970 (77.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 697 | 18.2% |
| `change_detection` | 2707 | 70.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 14 | 0.4% |
| `consolidation` | 111 | 2.9% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 1586 | 41.5% |
| `op_return` | 195 | 5.1% |
| `round_number_payment` | 519 | 13.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2749 | 71.9% |
| batch_payment | 430 | 11.2% |
| consolidation | 111 | 2.9% |
| coinjoin | 14 | 0.4% |
| coinbase | 1 | 0.0% |
| unknown | 521 | 13.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1026.17 |
| Median | 2282.86 |
| Mean | 7845.72 |
| Maximum | 18214.42 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed1b2174dd4a90… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 18 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 16 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 21 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 39 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 24 inputs → 2 outputs (high confidence) |
| `` | unknown | OP_RETURN data (unknown): "from zelcore" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b4a9a93762d90ba… |
| `` | batch_payment | OP_RETURN data (unknown): "from:200USDT(TRON):TUNGLHfa1C6gJE3VAzfFD…" |
| `` | batch_payment | OP_RETURN data (unknown): "from:3.524LTC:ltc1qguw2vx8lt2jazkjcyxgsc…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "TGE:to:USDT(TRON):TTSHsR4KXq1VXyH3rNNoK3…" |
| `` | batch_payment | OP_RETURN data (unknown): "{"p":"https://mezcal.sh","edicts":[["1:0…" |
| `` | consolidation | Consolidation: 17 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 17 inputs → 2 outputs (medium confidence) |

---

## Block #907132

**Block Hash:** `000000000000000000002591806596dcbebe67854f12fdb8040cc405fc77f8d4`  
**Height:** 907132  
**Transactions:** 2848  
**Flagged:** 2260 (79.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 828 | 29.1% |
| `change_detection` | 2035 | 71.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 71 | 2.5% |
| `consolidation` | 93 | 3.3% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 1217 | 42.7% |
| `op_return` | 66 | 2.3% |
| `round_number_payment` | 413 | 14.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1658 | 58.2% |
| batch_payment | 347 | 12.2% |
| consolidation | 93 | 3.3% |
| coinjoin | 71 | 2.5% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 676 | 23.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 51.14 |
| Median | 1790.42 |
| Mean | 3140.80 |
| Maximum | 33447.58 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 73797360c87a0fdd67a2… |
| `` | consolidation | Consolidation: 83 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 6 equal outputs of 330 sat (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b04904819213972… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b04904819213972… |
| `` | consolidation | Consolidation: 106 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 63 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "vjF:to:USDT(TRON):TEGnC7CzwMPvYJycexceV4…" |
| `` | batch_payment | OP_RETURN data (unknown): "wjV:to:USDT(TRON):TMxcRYTj6SQ1Z7ubxBSzCr…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b04904819213972… |
| `` | batch_payment | OP_RETURN data (unknown): "EAC:to:USDT(TRON):TEQxqVx512ydZMxkrMQtqn…" |
| `` | batch_payment | OP_RETURN data (unknown): "Cjo:to:ETH:0x0e480768d5fecd863032ed2a963…" |

---

## Block #907149

**Block Hash:** `00000000000000000001345218e06d3fa91b5fd486ca85e6ca4b6ab4ebddfa20`  
**Height:** 907149  
**Transactions:** 1056  
**Flagged:** 798 (75.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 302 | 28.6% |
| `change_detection` | 706 | 66.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 13 | 1.2% |
| `consolidation` | 33 | 3.1% |
| `self_transfer` | 5 | 0.5% |
| `peeling_chain` | 420 | 39.8% |
| `op_return` | 39 | 3.7% |
| `round_number_payment` | 144 | 13.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 649 | 61.5% |
| batch_payment | 120 | 11.4% |
| consolidation | 33 | 3.1% |
| coinjoin | 13 | 1.2% |
| self_transfer | 5 | 0.5% |
| coinbase | 1 | 0.1% |
| unknown | 235 | 22.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 29.81 |
| Median | 1317.99 |
| Mean | 2219.15 |
| Maximum | 46683.12 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 73797341878a0edd2b42… |
| `` | batch_payment | OP_RETURN data (unknown): 00a9e734a61f80d0dbc3… |
| `` | batch_payment | OP_RETURN data (unknown): "kdE:to:USDT(ERC20):0xef8b340416531f6e264…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b65c2122e406493… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b65c2122e406493… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "pRD:to:TRX:TAQpJeAgPVR57tNoCT9Yg4skHR9gD…" |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | self_transfer | OP_RETURN data (unknown): "OUT:3C4C30C20CB5FC9C4B784499BC5F53D3A195…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:3BD93380E1F0A5D34764370F3118C30FACD3…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b65c2122e406493… |
| `` | self_transfer | OP_RETURN data (unknown): 58325b65c2122e406493… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b65c2122e406493… |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |

---

## Block #907161

**Block Hash:** `00000000000000000001f071ba228d38ddd0e9c4536f7fd622906899bb16b491`  
**Height:** 907161  
**Transactions:** 2432  
**Flagged:** 1898 (78.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 808 | 33.2% |
| `change_detection` | 1741 | 71.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 70 | 2.9% |
| `consolidation` | 70 | 2.9% |
| `self_transfer` | 7 | 0.3% |
| `peeling_chain` | 1008 | 41.4% |
| `op_return` | 261 | 10.7% |
| `round_number_payment` | 219 | 9.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1398 | 57.5% |
| batch_payment | 207 | 8.5% |
| consolidation | 70 | 2.9% |
| coinjoin | 70 | 2.9% |
| self_transfer | 5 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 681 | 28.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 605.78 |
| Median | 4551.58 |
| Mean | 16432.47 |
| Maximum | 51777.41 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edca4f738275d1… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b684b48b2b9f7b1… |
| `` | unknown | OP_RETURN data (unknown): "noop" |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b684b48b2b9f7b1… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b684b48b2b9f7b1… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b684b48b2b9f7b1… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b684b48b2b9f7b1… |
| `` | consolidation | Consolidation: 39 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 0038146928ec08448917… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "lfr:to:USDT(TRON):TATVXfKi4fsbzx1snZ2kWZ…" |
| `` | batch_payment | OP_RETURN data (unknown): "4dx:to:USDT(BSC):0x4371d2fbf2b55a689096b…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |

---

## Block #907156

**Block Hash:** `000000000000000000002fa3a6a72e34baf68f9d612c0ceee7b4926a7a18b88a`  
**Height:** 907156  
**Transactions:** 3977  
**Flagged:** 2905 (73.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 860 | 21.6% |
| `change_detection` | 2624 | 66.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 60 | 1.5% |
| `consolidation` | 112 | 2.8% |
| `self_transfer` | 15 | 0.4% |
| `peeling_chain` | 1601 | 40.3% |
| `op_return` | 91 | 2.3% |
| `round_number_payment` | 526 | 13.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2731 | 68.7% |
| batch_payment | 374 | 9.4% |
| consolidation | 112 | 2.8% |
| coinjoin | 60 | 1.5% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 694 | 17.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 118.40 |
| Median | 1959.35 |
| Mean | 5160.42 |
| Maximum | 66842.80 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed085124ed0102… |
| `` | coinjoin | CoinJoin: 12 equal outputs of 3296934 sat (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "HaQ:to:LTC:ltc1q9ykeerpd2cklfg70zk0nvcd2…" |
| `` | batch_payment | OP_RETURN data (unknown): "l0P:to:TON:UQABLN7nVRbOArdhY1ExJcpVUVIaA…" |
| `` | consolidation | Consolidation: 45 inputs → 2 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "3jD:to:USDT(TRON):TNbUoUWGVihni7Y7E1Er7a…" |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "secure+:thor1t0zf44ujff3zq89x7345383c7ft…" |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf57804834f3d57… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:BA90574571C08EA1087F4F2FF58BFD37CB0A…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 24 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |

---

## Block #907177

**Block Hash:** `0000000000000000000082b29270c750e1f85c7cc352f0d69c684b7d480fee34`  
**Height:** 907177  
**Transactions:** 2202  
**Flagged:** 1749 (79.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 480 | 21.8% |
| `change_detection` | 1594 | 72.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 22 | 1.0% |
| `consolidation` | 65 | 3.0% |
| `self_transfer` | 11 | 0.5% |
| `peeling_chain` | 893 | 40.6% |
| `op_return` | 442 | 20.1% |
| `round_number_payment` | 261 | 11.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1346 | 61.1% |
| batch_payment | 425 | 19.3% |
| consolidation | 65 | 3.0% |
| coinjoin | 22 | 1.0% |
| self_transfer | 9 | 0.4% |
| coinbase | 1 | 0.0% |
| unknown | 334 | 15.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2.25 |
| Median | 1755.89 |
| Mean | 4299.15 |
| Maximum | 41503.50 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edf1d36255cd13… |
| `` | batch_payment | OP_RETURN data (unknown): "1JS:to:USDT(ERC20):0xef8b340416531f6e264…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b970c79a9e1d900… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b970c79a9e1d900… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "Yko:to:USDT(TRON):TWGmrfDRGUXctid8qyjoS3…" |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b970c79a9e1d900… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b970c79a9e1d900… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b970c79a9e1d900… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b970c79a9e1d900… |
| `` | batch_payment | OP_RETURN data (unknown): "BNh:to:TRX:TFJ9PrxPR8TEvGopSgbn5QCfMc5rA…" |

---

## Block #907175

**Block Hash:** `0000000000000000000080d5414ad82a5b7e077677aa3461aca6e2c93d210285`  
**Height:** 907175  
**Transactions:** 139  
**Flagged:** 108 (77.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 28 | 20.1% |
| `change_detection` | 96 | 69.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 2 | 1.4% |
| `consolidation` | 5 | 3.6% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 59 | 42.4% |
| `op_return` | 13 | 9.4% |
| `round_number_payment` | 21 | 15.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 88 | 63.3% |
| batch_payment | 21 | 15.1% |
| consolidation | 5 | 3.6% |
| coinjoin | 2 | 1.4% |
| coinbase | 1 | 0.7% |
| unknown | 22 | 15.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 130.42 |
| Median | 1463.40 |
| Mean | 3596.73 |
| Maximum | 14303.41 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edb82cca2d4518… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 259 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 0038148cd866c393a3ec… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | consolidation | Consolidation: 32 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 8 equal outputs of 330 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |

---

## Block #907180

**Block Hash:** `000000000000000000021712f9c4214e8afd0b3dd6866ff58c2e113e8e497b9c`  
**Height:** 907180  
**Transactions:** 3021  
**Flagged:** 2248 (74.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 651 | 21.5% |
| `change_detection` | 2048 | 67.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 50 | 1.7% |
| `consolidation` | 107 | 3.5% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 1287 | 42.6% |
| `op_return` | 217 | 7.2% |
| `round_number_payment` | 369 | 12.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1973 | 65.3% |
| batch_payment | 389 | 12.9% |
| consolidation | 106 | 3.5% |
| coinjoin | 50 | 1.7% |
| coinbase | 1 | 0.0% |
| unknown | 502 | 16.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1098.11 |
| Median | 2144.16 |
| Mean | 19253.46 |
| Maximum | 89552.49 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 7379738e68f45c8f63b5… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2c99156ee5dce9… |
| `` | batch_payment | OP_RETURN data (unknown): "Mdn:to:USDT(ERC20):0x43FEF1BA07297253CAD…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 980999121 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "l3d:to:USDT(TRON):TYFdKfyGcNSfbFz7nFc8fw…" |
| `` | batch_payment | OP_RETURN data (unknown): "6YX:to:TRX:TApVBudUctTrjnCJHfj3JfCgsH5n8…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2c99156ee5dce9… |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "Dsp:to:TRX:TPd5zCm5XXrC1wRq9nDpRKHCUVvUP…" |
| `` | consolidation | Consolidation: 87 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "HpU:to:UNI:0x296840c4b3341b375c4176edb2b…" |
| `` | batch_payment | OP_RETURN data (unknown): "wa3:to:BNB(BSC):0x470c18e66212dfD886463a…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2c99156ee5dce9… |

---

## Block #907162

**Block Hash:** `00000000000000000001f58f3bf367d4a1815dcb6e6125e97fc227c3098767bc`  
**Height:** 907162  
**Transactions:** 3187  
**Flagged:** 2325 (73.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 708 | 22.2% |
| `change_detection` | 2067 | 64.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 25 | 0.8% |
| `consolidation` | 93 | 2.9% |
| `self_transfer` | 16 | 0.5% |
| `peeling_chain` | 1292 | 40.5% |
| `op_return` | 85 | 2.7% |
| `round_number_payment` | 357 | 11.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2169 | 68.1% |
| batch_payment | 334 | 10.5% |
| consolidation | 93 | 2.9% |
| coinjoin | 25 | 0.8% |
| self_transfer | 9 | 0.3% |
| coinbase | 1 | 0.0% |
| unknown | 556 | 17.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 4.84 |
| Median | 1494.02 |
| Mean | 2349.60 |
| Maximum | 25383.42 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed531f072f7989… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "ny7:to:LTC:ltc1q9ykeerpd2cklfg70zk0nvcd2…" |
| `` | batch_payment | OP_RETURN data (unknown): "Sx0:to:TRX:TK48Mf9rPuMFcv516HUBvLjmtgWi7…" |
| `` | consolidation | Consolidation: 35 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfe0f90be62cb10… |
| `` | batch_payment | OP_RETURN data (unknown): 160100caa2338b078a9d… |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "wmT:to:USDT(ERC20):0x58A54F86F7EDb019C8D…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 41 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "42x:to:ETH:0xE55eF9ab7004B05Fc1393c6B85F…" |
| `` | batch_payment | OP_RETURN data (unknown): "sug:to:USDT(TRON):TYeVGnQszmXCUKywMmZJsi…" |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 18 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |

---

## Block #907166

**Block Hash:** `00000000000000000000a83ed2cc206638efbff1de54b374edf9b27a2b6bfe65`  
**Height:** 907166  
**Transactions:** 2942  
**Flagged:** 2069 (70.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 807 | 27.4% |
| `change_detection` | 1848 | 62.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 42 | 1.4% |
| `consolidation` | 96 | 3.3% |
| `self_transfer` | 13 | 0.4% |
| `peeling_chain` | 1118 | 38.0% |
| `op_return` | 178 | 6.1% |
| `round_number_payment` | 290 | 9.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1897 | 64.5% |
| batch_payment | 242 | 8.2% |
| consolidation | 96 | 3.3% |
| coinjoin | 42 | 1.4% |
| self_transfer | 11 | 0.4% |
| coinbase | 1 | 0.0% |
| unknown | 653 | 22.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.16 |
| Median | 1545.49 |
| Mean | 2083.38 |
| Maximum | 41746.36 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed22ff5a3b1628… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "4a6:to:USDT(BSC):0xBeD8eE9438591fB2953BA…" |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5d13f126180423… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "jun:to:USDT(TRON):TMb9vewADLrht7hSUyNvre…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "THl:to:USDT(ERC20):0xff96fa398d402AaEb11…" |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5d13f126180423… |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.USDT:0xAAc999a6a5013d91D54C7cb43Fd…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |

---

## Block #907181

**Block Hash:** `00000000000000000000394fe616fb6cbfa675bbc96220531000ad39b6a12493`  
**Height:** 907181  
**Transactions:** 3088  
**Flagged:** 2648 (85.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 305 | 9.9% |
| `change_detection` | 2556 | 82.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 20 | 0.6% |
| `consolidation` | 53 | 1.7% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 2220 | 71.9% |
| `op_return` | 1870 | 60.6% |
| `round_number_payment` | 118 | 3.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 903 | 29.2% |
| batch_payment | 1885 | 61.0% |
| consolidation | 53 | 1.7% |
| coinjoin | 20 | 0.6% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 224 | 7.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 153.93 |
| Median | 1744.00 |
| Mean | 1645.96 |
| Maximum | 3496.22 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed51c63662de99… |
| `` | consolidation | Consolidation: 100 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bac064160fd3685… |
| `` | consolidation | Consolidation: 336 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 104 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "4lJ:to:XRP:rBWvinMrebpsuLXidnxzWfPwkZwg5…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bac064160fd3685… |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 34 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "GKm:to:XRP:rUiA4ZpoaD4bzBDtETACSfAPzhqw2…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bac064160fd3685… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 52 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "fdM:to:TRX:TC5b8WfiGrRyrnwdgY6WQkviKznxP…" |
| `` | batch_payment | OP_RETURN data (unknown): "XA0:to:BCH:qrqx4lzwqs5pur6mqvt42hkx8x5nn…" |

---

## Block #907120

**Block Hash:** `00000000000000000000cfe38a9ecc63e1b217785af07046a3bd9e33d93c3e27`  
**Height:** 907120  
**Transactions:** 2175  
**Flagged:** 1687 (77.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 555 | 25.5% |
| `change_detection` | 1427 | 65.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 26 | 1.2% |
| `consolidation` | 84 | 3.9% |
| `self_transfer` | 13 | 0.6% |
| `peeling_chain` | 876 | 40.3% |
| `op_return` | 55 | 2.5% |
| `round_number_payment` | 461 | 21.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1345 | 61.8% |
| batch_payment | 300 | 13.8% |
| consolidation | 84 | 3.9% |
| coinjoin | 26 | 1.2% |
| self_transfer | 11 | 0.5% |
| coinbase | 1 | 0.0% |
| unknown | 408 | 18.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.00 |
| Median | 1478.10 |
| Mean | 3194.83 |
| Maximum | 58799.63 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed6e0d34fb7735… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2332390e9a7dda9… |
| `` | batch_payment | OP_RETURN data (unknown): "w9N:to:USDT(TRON):TCFx6MvRt7HwsC1BDSeWsJ…" |
| `` | batch_payment | OP_RETURN data (unknown): "yb9:to:USDT(TRON):THSwDqoSEarSzxFoQGxLsL…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6917c8ae9695da… |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 14 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 160100caa2338b07d8a4… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "sHE:to:TRX:TAFJ77tnNmEfq47kbidBb9nfPPnWC…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6917c8ae9695da… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6917c8ae9695da… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 5 equal outputs of 546 sat (high confidence) |
| `` | coinjoin | CoinJoin: 11 equal outputs of 330 sat (high confidence) |

---

## Block #907172

**Block Hash:** `00000000000000000001bba003500766521c1f93fad4ca66bfaec4089d31878e`  
**Height:** 907172  
**Transactions:** 3554  
**Flagged:** 3067 (86.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 533 | 15.0% |
| `change_detection` | 2892 | 81.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 48 | 1.4% |
| `consolidation` | 80 | 2.3% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 2242 | 63.1% |
| `op_return` | 1617 | 45.5% |
| `round_number_payment` | 271 | 7.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1429 | 40.2% |
| batch_payment | 1589 | 44.7% |
| consolidation | 80 | 2.3% |
| coinjoin | 48 | 1.4% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 404 | 11.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 28.16 |
| Median | 3468.79 |
| Mean | 13391.19 |
| Maximum | 69166.07 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed82657eeb58b7… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 51 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b385a56bc2f1457… |
| `` | batch_payment | OP_RETURN data (unknown): "x1G:to:USDT(ERC20):0x0370afc5dc62365fa24…" |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "1St:to:TRX:TAipW2RKKZa5f5jkP12JUsgWF79CG…" |
| `` | batch_payment | OP_RETURN data (unknown): "neC:to:USDT(TRON):TMTnhJZCNPrR4Zqks5tdrb…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b385a56bc2f1457… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 505 sat (medium confidence) |
| `` | consolidation | Consolidation: 40 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b385a56bc2f1457… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #907168

**Block Hash:** `00000000000000000001a593d1e0c729b7d5995cb6dd599b470c575f95710f3b`  
**Height:** 907168  
**Transactions:** 2262  
**Flagged:** 1217 (53.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 343 | 15.2% |
| `change_detection` | 1048 | 46.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 24 | 1.1% |
| `consolidation` | 97 | 4.3% |
| `self_transfer` | 6 | 0.3% |
| `peeling_chain` | 561 | 24.8% |
| `op_return` | 216 | 9.5% |
| `round_number_payment` | 256 | 11.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1771 | 78.3% |
| batch_payment | 141 | 6.2% |
| consolidation | 97 | 4.3% |
| coinjoin | 24 | 1.1% |
| self_transfer | 6 | 0.3% |
| coinbase | 1 | 0.0% |
| unknown | 222 | 9.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 24.28 |
| Median | 2613.62 |
| Mean | 2938.19 |
| Maximum | 67889.51 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edf45913b087cb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3ac983ede7a5f0… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3ac983ede7a5f0… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3ac983ede7a5f0… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3ac983ede7a5f0… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3ac983ede7a5f0… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "WmG:to:LTC:ltc1q5ren663qc06hjzjpx7tfd8u6…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3ac983ede7a5f0… |
| `` | consolidation | Consolidation: 20 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 28 inputs → 2 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown):  |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "{"p":"brc-20","op":"transfer","tick":"LO…" |
| `` | self_transfer | OP_RETURN data (unknown): "to:TON:UQB6YRxJbp0-A-bhtlCz-QeVpV2E8lTnR…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3ac983ede7a5f0… |
| `` | simple_payment | OP_RETURN data (unknown): 62626e31000000000000… |

---

## Block #907186

**Block Hash:** `000000000000000000007816c53bcfed665f449da7ff0b989f9c5c091d07e8bf`  
**Height:** 907186  
**Transactions:** 2920  
**Flagged:** 2182 (74.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 812 | 27.8% |
| `change_detection` | 1959 | 67.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 69 | 2.4% |
| `consolidation` | 106 | 3.6% |
| `self_transfer` | 14 | 0.5% |
| `peeling_chain` | 1215 | 41.6% |
| `op_return` | 63 | 2.2% |
| `round_number_payment` | 322 | 11.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1817 | 62.2% |
| batch_payment | 270 | 9.2% |
| consolidation | 106 | 3.6% |
| coinjoin | 69 | 2.4% |
| self_transfer | 6 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 651 | 22.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 10.00 |
| Median | 1719.48 |
| Mean | 2662.64 |
| Maximum | 53534.23 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 4f4342314de08f2f1d00… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 17 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 42 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 26 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 10000000 sat (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 29 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 23 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303de8accaadd… |
| `` | consolidation | Consolidation: 35 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a23303d08d99c7d2… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |

---

## Block #907171

**Block Hash:** `000000000000000000013d1c4002436be4e7bee69a74072f483a010ebbb7f705`  
**Height:** 907171  
**Transactions:** 2762  
**Flagged:** 2085 (75.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 634 | 23.0% |
| `change_detection` | 1848 | 66.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 37 | 1.3% |
| `consolidation` | 108 | 3.9% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 1118 | 40.5% |
| `op_return` | 142 | 5.1% |
| `round_number_payment` | 344 | 12.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1854 | 67.1% |
| batch_payment | 292 | 10.6% |
| consolidation | 108 | 3.9% |
| coinjoin | 37 | 1.3% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 469 | 17.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 853.88 |
| Median | 1884.59 |
| Mean | 5303.38 |
| Maximum | 19356.34 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed4d5d2c28c6d9… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 30 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 32 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 50 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 51 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 26 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf29cfedae3675a… |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "EnF:to:USDT(TRON):TMb9vewADLrht7hSUyNvre…" |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "fQK:to:USDT(TRON):TMTnhJZCNPrR4Zqks5tdrb…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "FC8:to:SUI:0x95afc8dbfa642461c440a56b840…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf29cfedae3675a… |
| `` | coinjoin | CoinJoin: 26 equal outputs of 546 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "h3W:to:USDT(TRON):TWGmrfDRGUXctid8qyjoS3…" |

---

## Block #907169

**Block Hash:** `00000000000000000000ebef7bc4d9a6f5f13dee681842124bd070c30bfd5af5`  
**Height:** 907169  
**Transactions:** 1382  
**Flagged:** 892 (64.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 309 | 22.4% |
| `change_detection` | 783 | 56.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 12 | 0.9% |
| `consolidation` | 37 | 2.7% |
| `self_transfer` | 7 | 0.5% |
| `peeling_chain` | 480 | 34.7% |
| `op_return` | 112 | 8.1% |
| `round_number_payment` | 150 | 10.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 914 | 66.1% |
| batch_payment | 167 | 12.1% |
| consolidation | 37 | 2.7% |
| coinjoin | 12 | 0.9% |
| self_transfer | 6 | 0.4% |
| coinbase | 1 | 0.1% |
| unknown | 245 | 17.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 3.14 |
| Median | 1856.41 |
| Mean | 2631.68 |
| Maximum | 69817.73 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edf71e9c9ec82e… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfeba11e661172a… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfeba11e661172a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfeba11e661172a… |
| `` | batch_payment | OP_RETURN data (unknown): "xia:to:TRX:TFfie7JZakMMuq9w3PuWebea4D9ZU…" |
| `` | batch_payment | OP_RETURN data (unknown): "QpR:to:ETH:0x898eEB505336963E38A8D90b6bF…" |
| `` | batch_payment | OP_RETURN data (unknown): "10n:to:BNB(BSC):0xa72447eedf5b1d36a6a804…" |
| `` | batch_payment | OP_RETURN data (unknown): "Krk:to:USDT(BSC):0x7a4E77B927fbba623CDC9…" |
| `` | batch_payment | OP_RETURN data (unknown): "D4A:to:USDT(BSC):0x89343B44bD7B341Ae1851…" |
| `` | batch_payment | OP_RETURN data (unknown): "L1M:to:USDT(ERC20):0xd945f46aaad63545e62…" |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfeba11e661172a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfeba11e661172a… |
| `` | consolidation | Consolidation: 80 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | unknown | OP_RETURN data (unknown): "ppU:to:ARB(ARB):0x27DD86F337f85a3bbdA0d7…" |
| `` | simple_payment | OP_RETURN data (unknown): "RLe:to:USDT(BSC):0x73bE2108e019049b944e5…" |

---

## Block #907174

**Block Hash:** `000000000000000000008784613498e541405e7d7661faa46c642cc9ae902277`  
**Height:** 907174  
**Transactions:** 627  
**Flagged:** 532 (84.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 121 | 19.3% |
| `change_detection` | 486 | 77.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 7 | 1.1% |
| `consolidation` | 21 | 3.3% |
| `self_transfer` | 3 | 0.5% |
| `peeling_chain` | 234 | 37.3% |
| `op_return` | 219 | 34.9% |
| `round_number_payment` | 57 | 9.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 380 | 60.6% |
| batch_payment | 126 | 20.1% |
| consolidation | 21 | 3.3% |
| coinjoin | 7 | 1.1% |
| self_transfer | 2 | 0.3% |
| coinbase | 1 | 0.2% |
| unknown | 90 | 14.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 153.04 |
| Median | 1941.29 |
| Mean | 3120.97 |
| Maximum | 38987.18 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edec7fb0f90c5b… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2e6bfee90babb3… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "0iS:to:USDT(TRON):TGmeQXg2217rmKZ43nDisc…" |
| `` | batch_payment | OP_RETURN data (unknown): "Automatic cold wallet send" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2e6bfee90babb3… |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "fqe:to:USDT(BSC):0x09b544a11e3ad5e2359c2…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2e6bfee90babb3… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2e6bfee90babb3… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2e6bfee90babb3… |
| `` | simple_payment | OP_RETURN data (unknown): "to:USDT(TRON):TXFXuqMmdJZT7DjXSdxx54FhHG…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8192ec82d08b8080… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907187

**Block Hash:** `00000000000000000001f7c06a236b60be837687099f776f7838ef77b3ee68bc`  
**Height:** 907187  
**Transactions:** 3011  
**Flagged:** 2287 (76.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 732 | 24.3% |
| `change_detection` | 2062 | 68.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 53 | 1.8% |
| `consolidation` | 94 | 3.1% |
| `self_transfer` | 8 | 0.3% |
| `peeling_chain` | 1265 | 42.0% |
| `op_return` | 200 | 6.6% |
| `round_number_payment` | 333 | 11.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1890 | 62.8% |
| batch_payment | 377 | 12.5% |
| consolidation | 93 | 3.1% |
| coinjoin | 53 | 1.8% |
| self_transfer | 7 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 590 | 19.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.00 |
| Median | 1756.68 |
| Mean | 1693.55 |
| Maximum | 4319.20 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edbfdb07ac2e3f… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 26 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "YJS:to:USDC:0x8DeDf1f290F460c25b6466738d…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1a92025a7f642e… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1a92025a7f642e… |
| `` | batch_payment | OP_RETURN data (unknown): "vYF:to:USDT(TRON):TXKdT7Uuiu7JaPGGBGVtUz…" |
| `` | batch_payment | OP_RETURN data (unknown): "bG2:to:ETH:0xE55eF9ab7004B05Fc1393c6B85F…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1a92025a7f642e… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1a92025a7f642e… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1a92025a7f642e… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "8hx:to:TRX:TPd5zCm5XXrC1wRq9nDpRKHCUVvUP…" |
| `` | batch_payment | OP_RETURN data (unknown): "I5S:to:USDT(TRON):TWLDGZeS8vk9m9XN7GDYxw…" |
| `` | batch_payment | OP_RETURN data (unknown): "YtN:to:ETH:0x1e0d900f5ec9af218873693f957…" |

---

## Block #907179

**Block Hash:** `00000000000000000000adb472c87a5b369bc1920459c41665052e69bf43dece`  
**Height:** 907179  
**Transactions:** 2243  
**Flagged:** 1654 (73.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 472 | 21.0% |
| `change_detection` | 1495 | 66.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 44 | 2.0% |
| `consolidation` | 74 | 3.3% |
| `self_transfer` | 6 | 0.3% |
| `peeling_chain` | 810 | 36.1% |
| `op_return` | 300 | 13.4% |
| `round_number_payment` | 222 | 9.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1521 | 67.8% |
| batch_payment | 245 | 10.9% |
| consolidation | 74 | 3.3% |
| coinjoin | 44 | 2.0% |
| self_transfer | 4 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 354 | 15.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 4.44 |
| Median | 1691.49 |
| Mean | 3905.04 |
| Maximum | 60396.70 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed0430f6502e3d… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 47 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7fc3b51df13fcb… |
| `` | consolidation | Consolidation: 240 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7fc3b51df13fcb… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7fc3b51df13fcb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7fc3b51df13fcb… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "from:7000USDT(TRON):TDLTBcGjuAFazXVMktfZ…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7fc3b51df13fcb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7fc3b51df13fcb… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | unknown | OP_RETURN data (unknown):  |

---

## Block #907188

**Block Hash:** `000000000000000000016689a83ba3a69285f65cb6cbc4273279054e3a3af67b`  
**Height:** 907188  
**Transactions:** 3293  
**Flagged:** 2762 (83.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 128 | 3.9% |
| `change_detection` | 2689 | 81.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 12 | 0.4% |
| `consolidation` | 26 | 0.8% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 2526 | 76.7% |
| `op_return` | 2378 | 72.2% |
| `round_number_payment` | 65 | 2.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 781 | 23.7% |
| batch_payment | 2378 | 72.2% |
| consolidation | 26 | 0.8% |
| coinjoin | 12 | 0.4% |
| coinbase | 1 | 0.0% |
| unknown | 95 | 2.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 301.90 |
| Median | 407.33 |
| Mean | 1994.00 |
| Maximum | 5272.78 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edc37a1b9e497c… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5ac63a54d85ea8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5ac63a54d85ea8… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5ac63a54d85ea8… |
| `` | consolidation | Consolidation: 150 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5ac63a54d85ea8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5ac63a54d85ea8… |
| `` | batch_payment | OP_RETURN data (unknown): "MIGRATE:2875358" |
| `` | batch_payment | OP_RETURN data (unknown): "{"p":"brc-20","op":"transfer","tick":"LO…" |
| `` | simple_payment | OP_RETURN data (unknown): "0lX:to:BNB(BSC):0x76041d81d8d9051B31E0cc…" |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 160200c0a2332df67101 |
| `` | batch_payment | OP_RETURN data (unknown): 160200c0a2332deba501… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 546 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5ac63a54d85ea8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5ac63a54d85ea8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907184

**Block Hash:** `000000000000000000020cad25005a49d125abb3a26d7dd6a834c2578eb50d6c`  
**Height:** 907184  
**Transactions:** 3682  
**Flagged:** 2843 (77.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 731 | 19.9% |
| `change_detection` | 2594 | 70.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 32 | 0.9% |
| `consolidation` | 85 | 2.3% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 1580 | 42.9% |
| `op_return` | 74 | 2.0% |
| `round_number_payment` | 473 | 12.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2570 | 69.8% |
| batch_payment | 412 | 11.2% |
| consolidation | 85 | 2.3% |
| coinjoin | 32 | 0.9% |
| coinbase | 1 | 0.0% |
| unknown | 582 | 15.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.00 |
| Median | 11040.35 |
| Mean | 7952.42 |
| Maximum | 12816.90 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed7a6e6520d749… |
| `` | consolidation | Consolidation: 81 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 53 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "jHL:to:USDC:0x8DeDf1f290F460c25b6466738d…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b87fbaf064c307a… |
| `` | batch_payment | OP_RETURN data (unknown): "OGa:to:USDT(TRON):TBA5XyDpmUvo9G7BEarm9p…" |
| `` | batch_payment | OP_RETURN data (unknown): "qgR:to:SOL:7fr44uEuGLsbPvQqdbmmTLNupBw1A…" |
| `` | consolidation | Consolidation: 336 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "5u0:to:USDT(TRON):TNzmKbrWpaBRfu5ewG5aXg…" |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b87fbaf064c307a… |
| `` | batch_payment | OP_RETURN data (unknown): "from:132.7TON:UQDgbO-x8KNnpV2BnK0slsQLl6…" |
| `` | batch_payment | OP_RETURN data (unknown): "from:3650USDT(TRON):TErBL6gndptPEQTjs2Qc…" |
| `` | batch_payment | OP_RETURN data (unknown): "from:296.7TON:UQCX7AQvHOtYvF2m6xdVCoJmzP…" |
| `` | batch_payment | OP_RETURN data (unknown): "from:845.9USDT(TRON):TCFvLD1YqmzWgPd5uEB…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |

---

## Block #907199

**Block Hash:** `00000000000000000000a4b1cede1eba74d67df322ca415468f277aa7b508f47`  
**Height:** 907199  
**Transactions:** 4425  
**Flagged:** 3997 (90.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 85 | 1.9% |
| `change_detection` | 3955 | 89.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 11 | 0.2% |
| `consolidation` | 28 | 0.6% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 3859 | 87.2% |
| `op_return` | 3748 | 84.7% |
| `round_number_payment` | 63 | 1.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 562 | 12.7% |
| batch_payment | 3773 | 85.3% |
| consolidation | 28 | 0.6% |
| coinjoin | 11 | 0.2% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 49 | 1.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 4.02 |
| Median | 1877.63 |
| Mean | 1672.87 |
| Maximum | 4586.19 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed7b29b0599c60… |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "0xaac56469bebfa14d106c334d317347e4953812…" |
| `` | consolidation | Consolidation: 770 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 600 sat (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 48454d4901015ef34b00… |
| `` | simple_payment | OP_RETURN data (unknown): 48454d4901015ef36400… |
| `` | simple_payment | OP_RETURN data (unknown): 48454d4901015ef36400… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 19 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 60 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 24 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 64 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 60 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 60 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 11 equal outputs of 330 sat (high confidence) |

---

## Block #907201

**Block Hash:** `00000000000000000000f51b25ec47cc19c935ae8397941225704ebb7c3dacf0`  
**Height:** 907201  
**Transactions:** 6  
**Flagged:** 6 (100.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 3 | 50.0% |
| `change_detection` | 4 | 66.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 0 | 0.0% |
| `consolidation` | 0 | 0.0% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 0 | 0.0% |
| `op_return` | 2 | 33.3% |
| `round_number_payment` | 2 | 33.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2 | 33.3% |
| batch_payment | 1 | 16.7% |
| coinbase | 1 | 16.7% |
| unknown | 2 | 33.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 4367.63 |
| Median | 4367.63 |
| Mean | 4367.63 |
| Maximum | 4367.63 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edbf10ba73bae3… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907144

**Block Hash:** `0000000000000000000114f790722e1190054c979260af659880cfcbb34793a3`  
**Height:** 907144  
**Transactions:** 4376  
**Flagged:** 4134 (94.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 169 | 3.9% |
| `change_detection` | 4070 | 93.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 14 | 0.3% |
| `consolidation` | 23 | 0.5% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 3891 | 88.9% |
| `op_return` | 3594 | 82.1% |
| `round_number_payment` | 87 | 2.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 563 | 12.9% |
| batch_payment | 3645 | 83.3% |
| consolidation | 23 | 0.5% |
| coinjoin | 14 | 0.3% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 126 | 2.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 8.14 |
| Median | 1719.98 |
| Mean | 3406.70 |
| Maximum | 30459.72 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed97254b85fa65… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b877e59be3befa2… |
| `` | batch_payment | OP_RETURN data (unknown): 160100caa2338b07af95… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b877e59be3befa2… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "H49:to:USDT(TRON):TSN2im9ELGmzqfMoHHEt5E…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b877e59be3befa2… |
| `` | batch_payment | OP_RETURN data (unknown): "from:15USDT(TRON):TMA3TCxnkiqHihbNCGfFKK…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b877e59be3befa2… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:E92C3C0393BA78160A5558C1CBFB5780EEB6…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:CE04F1687BCBE3932DDDC6BABC13F474F041…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:6FDC0FEE288B4E5CA965A7C716AE3CDFE458…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b877e59be3befa2… |
| `` | batch_payment | OP_RETURN data (unknown): 160100ead233de01a70b… |

---

## Block #907178

**Block Hash:** `00000000000000000000334e1067c0840fe7aea5042e33d577f4ea2f25053ccc`  
**Height:** 907178  
**Transactions:** 3349  
**Flagged:** 2484 (74.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 662 | 19.8% |
| `change_detection` | 2223 | 66.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 24 | 0.7% |
| `consolidation` | 112 | 3.3% |
| `self_transfer` | 10 | 0.3% |
| `peeling_chain` | 1347 | 40.2% |
| `op_return` | 114 | 3.4% |
| `round_number_payment` | 447 | 13.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2369 | 70.7% |
| batch_payment | 350 | 10.5% |
| consolidation | 112 | 3.3% |
| coinjoin | 24 | 0.7% |
| self_transfer | 8 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 485 | 14.5% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 17.03 |
| Median | 1819.05 |
| Mean | 4098.40 |
| Maximum | 54223.75 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed79dacbfc00ce… |
| `` | consolidation | Consolidation: 35 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 47 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 20 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb18dcdac1f9f6d… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "7ZO:to:TRX:TXaGfnbtKCLFK7aSac2mFUUUspVD3…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb18dcdac1f9f6d… |
| `` | simple_payment | OP_RETURN data (unknown): "YrD:to:USDT(TRON):TPp7o9Es9MGPyX3fSQkEL8…" |
| `` | batch_payment | OP_RETURN data (unknown): "Fib:to:AI16Z(SOL):4zEsNMMTxSa5MLwCiZbYcc…" |
| `` | unknown | OP_RETURN data (unknown): "uyO:to:BNB(BSC):0x1D64f34F6eba2DF9f0566b…" |
| `` | simple_payment | OP_RETURN data (unknown): "dPa:to:USDT(TRON):TD8YgaRZBrrdvgVpZvMh1K…" |
| `` | batch_payment | OP_RETURN data (unknown): "GNs:to:XRP:rBahZLvAzZzcfrUjrTXTpNpuBt31s…" |
| `` | batch_payment | OP_RETURN data (unknown): "yW1:to:LINK(BSC):0x296840c4b3341b375c417…" |
| `` | batch_payment | OP_RETURN data (unknown): "iIs:to:LTC:ltc1qcns0heh5jv4m8x4rmyhr55j0…" |
| `` | simple_payment | OP_RETURN data (unknown): "MhQ:to:USDT(TRON):TUUWWskJjKBe1Y3ToooM94…" |

---

## Block #907191

**Block Hash:** `00000000000000000001de0bee49d22a48b5b60bb57f1665b672a3e72f2a6dca`  
**Height:** 907191  
**Transactions:** 3723  
**Flagged:** 2906 (78.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 741 | 19.9% |
| `change_detection` | 2594 | 69.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 36 | 1.0% |
| `consolidation` | 139 | 3.7% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 1522 | 40.9% |
| `op_return` | 129 | 3.5% |
| `round_number_payment` | 494 | 13.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2481 | 66.6% |
| batch_payment | 518 | 13.9% |
| consolidation | 139 | 3.7% |
| coinjoin | 36 | 1.0% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 545 | 14.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 9.67 |
| Median | 1316.93 |
| Mean | 2875.69 |
| Maximum | 38546.18 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edff23e50765e2… |
| `` | batch_payment | OP_RETURN data (unknown): "Galaxy Executes One of the Largest Notio…" |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 47 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "From Zel to At Wallet" |
| `` | batch_payment | OP_RETURN data (unknown): "EUt:to:USDC:0x8DeDf1f290F460c25b6466738d…" |
| `` | batch_payment | OP_RETURN data (unknown): "159843" |
| `` | batch_payment | OP_RETURN data (unknown): "159842" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9c081aed7876d4… |
| `` | batch_payment | OP_RETURN data (unknown): "BiC:to:XRP:rp6327vHaNbFjeSWWxb1jU2sECYJZ…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "B1J:to:USDT(TRON):TMb9vewADLrht7hSUyNvre…" |
| `` | consolidation | Consolidation: 93 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |

---

## Block #907200

**Block Hash:** `00000000000000000000ff0d4891e68cbfdd855050140eb359aec80231b6644d`  
**Height:** 907200  
**Transactions:** 4532  
**Flagged:** 4025 (88.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 283 | 6.2% |
| `change_detection` | 3908 | 86.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 27 | 0.6% |
| `consolidation` | 56 | 1.2% |
| `self_transfer` | 10 | 0.2% |
| `peeling_chain` | 3589 | 79.2% |
| `op_return` | 3224 | 71.1% |
| `round_number_payment` | 149 | 3.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 936 | 20.7% |
| batch_payment | 3309 | 73.0% |
| consolidation | 56 | 1.2% |
| coinjoin | 27 | 0.6% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 198 | 4.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 8.99 |
| Median | 1562.30 |
| Mean | 3241.78 |
| Maximum | 70396.89 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed8fa917b22499… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8408a0ceeeaf68… |
| `` | consolidation | Consolidation: 17 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 600 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8408a0ceeeaf68… |
| `` | batch_payment | OP_RETURN data (unknown): "from:21101.1USDT(ERC20):0x345b03952011d2…" |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b8408a0ceeeaf68… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |

---

## Block #907153

**Block Hash:** `000000000000000000004856b729177bc7d142e8ae42f92af37d7be71039acf4`  
**Height:** 907153  
**Transactions:** 3620  
**Flagged:** 3271 (90.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 350 | 9.7% |
| `change_detection` | 3190 | 88.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 19 | 0.5% |
| `consolidation` | 35 | 1.0% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 2877 | 79.5% |
| `op_return` | 2340 | 64.6% |
| `round_number_payment` | 145 | 4.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 866 | 23.9% |
| batch_payment | 2401 | 66.3% |
| consolidation | 35 | 1.0% |
| coinjoin | 19 | 0.5% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 297 | 8.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 3.68 |
| Median | 1550.42 |
| Mean | 3672.08 |
| Maximum | 68341.13 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed4f1be55798ff… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b399adf28d3705d… |
| `` | batch_payment | OP_RETURN data (unknown): "5jS:to:ETH:0xE55eF9ab7004B05Fc1393c6B85F…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b399adf28d3705d… |
| `` | coinjoin | CoinJoin: 30 equal outputs of 546 sat (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:91D93FCF82A0B45EB8CF86DC762AE11EDF6F…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:C91064F8EF8968BE38B8E449CCECCEA3798E…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b399adf28d3705d… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b399adf28d3705d… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b399adf28d3705d… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |

---

## Block #907195

**Block Hash:** `000000000000000000018c308bf5a7c0d81515f2c56f01b0de8c134fc957ed7b`  
**Height:** 907195  
**Transactions:** 4654  
**Flagged:** 4116 (88.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 222 | 4.8% |
| `change_detection` | 4032 | 86.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 26 | 0.6% |
| `consolidation` | 36 | 0.8% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 3800 | 81.7% |
| `op_return` | 3480 | 74.8% |
| `round_number_payment` | 129 | 2.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 876 | 18.8% |
| batch_payment | 3547 | 76.2% |
| consolidation | 36 | 0.8% |
| coinjoin | 26 | 0.6% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 166 | 3.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.04 |
| Median | 1025.06 |
| Mean | 4250.31 |
| Maximum | 25800.70 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed2abd8289bb62… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b35404729cfadb4… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "ET9:to:USDT(TRON):TXKdT7Uuiu7JaPGGBGVtUz…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b35404729cfadb4… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "kmb:to:XRP:rPAQKfT7GytLxyRHP1XuerphSwgKE…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b35404729cfadb4… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "aTk:to:USDT(ERC20):0x36B7397Ea518DB16E21…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:28119245111EAF20B99721CE2FF38B545CBD…" |

---

## Block #907176

**Block Hash:** `000000000000000000018d4e3381b90a6b1c9d6c73ddf087bb6c635858e47042`  
**Height:** 907176  
**Transactions:** 5095  
**Flagged:** 5090 (99.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 5 | 0.1% |
| `change_detection` | 5085 | 99.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 0 | 0.0% |
| `consolidation` | 2 | 0.0% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 5056 | 99.2% |
| `op_return` | 5073 | 99.6% |
| `round_number_payment` | 26 | 0.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 17 | 0.3% |
| batch_payment | 5071 | 99.5% |
| consolidation | 2 | 0.0% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 3 | 0.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1014.30 |
| Median | 1037.99 |
| Mean | 1165.75 |
| Maximum | 24166.03 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed3977f764e813… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 48454d4901015eeed700… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |

---

## Block #907190

**Block Hash:** `00000000000000000000174f7647adf67d461ed8cd3e59b144feb5796ee6775a`  
**Height:** 907190  
**Transactions:** 2340  
**Flagged:** 1733 (74.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 623 | 26.6% |
| `change_detection` | 1557 | 66.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 50 | 2.1% |
| `consolidation` | 62 | 2.6% |
| `self_transfer` | 7 | 0.3% |
| `peeling_chain` | 977 | 41.8% |
| `op_return` | 94 | 4.0% |
| `round_number_payment` | 238 | 10.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1481 | 63.3% |
| batch_payment | 229 | 9.8% |
| consolidation | 62 | 2.6% |
| coinjoin | 50 | 2.1% |
| self_transfer | 5 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 512 | 21.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.12 |
| Median | 1841.89 |
| Mean | 2597.63 |
| Maximum | 28310.71 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9eddea720b0d6e9… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380a0b787e9… |
| `` | consolidation | Consolidation: 26 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0bc57beb033801… |
| `` | consolidation | Consolidation: 18 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0bc57beb033801… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 39 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OyB:to:TRX:TDN6bJtBa7L8rMxksmq9QMA711b8v…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0bc57beb033801… |
| `` | batch_payment | OP_RETURN data (unknown): "AlE:to:USDT(TRON):TLaYCKynYMgp7YaB2e2tZp…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 160200a6a933b205e427… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 1482f733148a0e |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 5 equal outputs of 546 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:696D6729BC2E889B65D3348F9BE005AB3444…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:A2F615AE74C1C4C31BE7379F621E8E272E21…" |

---

## Block #907203

**Block Hash:** `000000000000000000019fe09be7a4430cd9e2ef3abcbdd264f6a477f6d9a733`  
**Height:** 907203  
**Transactions:** 2995  
**Flagged:** 1971 (65.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 629 | 21.0% |
| `change_detection` | 1766 | 59.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 81 | 2.7% |
| `consolidation` | 120 | 4.0% |
| `self_transfer` | 8 | 0.3% |
| `peeling_chain` | 1168 | 39.0% |
| `op_return` | 365 | 12.2% |
| `round_number_payment` | 229 | 7.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1829 | 61.1% |
| batch_payment | 518 | 17.3% |
| consolidation | 120 | 4.0% |
| coinjoin | 81 | 2.7% |
| self_transfer | 5 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 441 | 14.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 27.21 |
| Median | 1971.51 |
| Mean | 1657.89 |
| Maximum | 2511.86 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed69c933bc0579… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 15 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0451b7af274cc3… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0451b7af274cc3… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0451b7af274cc3… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0451b7af274cc3… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0451b7af274cc3… |
| `` | coinjoin | CoinJoin: 3 equal outputs of 600 sat (medium confidence) |
| `` | consolidation | Consolidation: 130 inputs → 2 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown):  |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:25B566F2738FE7255943976F8ED7221A0627…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8192ec82d08b8080… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0451b7af274cc3… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8192ec82d08b8080… |
| `` | simple_payment | OP_RETURN data (unknown): aef315255a08f7458923… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b0451b7af274cc3… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 600 sat (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #907204

**Block Hash:** `00000000000000000000ba6e7d9280e2d785d6c82aad5631367cd413c824ac1b`  
**Height:** 907204  
**Transactions:** 5017  
**Flagged:** 4367 (87.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 124 | 2.5% |
| `change_detection` | 4321 | 86.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 8 | 0.2% |
| `consolidation` | 31 | 0.6% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 4080 | 81.3% |
| `op_return` | 3942 | 78.6% |
| `round_number_payment` | 83 | 1.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 922 | 18.4% |
| batch_payment | 3971 | 79.2% |
| consolidation | 31 | 0.6% |
| coinjoin | 8 | 0.2% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 81 | 1.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.04 |
| Median | 37.28 |
| Mean | 2309.05 |
| Maximum | 17634.63 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed4cf3826f2bcf… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba694e67cc988de… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | self_transfer | OP_RETURN data (unknown): "REFUND:8339ECA9BAFE4BEDCDF36E793E357ED2C…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba694e67cc988de… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba694e67cc988de… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba694e67cc988de… |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:BC508606A2A28024A0174C040A1EDA652834…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba694e67cc988de… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba694e67cc988de… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |

---

## Block #907196

**Block Hash:** `00000000000000000001284bd54fc319fdb7fbc99808f4397773ffcae33f487e`  
**Height:** 907196  
**Transactions:** 4486  
**Flagged:** 4148 (92.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 164 | 3.7% |
| `change_detection` | 4093 | 91.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 11 | 0.2% |
| `consolidation` | 17 | 0.4% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 3916 | 87.3% |
| `op_return` | 3704 | 82.6% |
| `round_number_payment` | 104 | 2.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 583 | 13.0% |
| batch_payment | 3743 | 83.4% |
| consolidation | 17 | 0.4% |
| coinjoin | 11 | 0.2% |
| self_transfer | 4 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 127 | 2.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 114.82 |
| Median | 1853.28 |
| Mean | 3691.64 |
| Maximum | 62967.27 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed8202633ea4d6… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b028b96db966686… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b028b96db966686… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 18 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 5 equal outputs of 123600 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b028b96db966686… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b028b96db966686… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b028b96db966686… |
| `` | simple_payment | OP_RETURN data (unknown): "9V2:to:USDT(TRON):TJsFUHtateCiksZPmpyZkU…" |
| `` | batch_payment | OP_RETURN data (unknown): "to:USDT(TRON):THTaMbWx1QJW8NoeMgbeyCdU9w…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b028b96db966686… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |

---

## Block #907208

**Block Hash:** `000000000000000000015ba1d6d2bd4aef87b88cd33a0f80b0adf993f1017448`  
**Height:** 907208  
**Transactions:** 4174  
**Flagged:** 3636 (87.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 346 | 8.3% |
| `change_detection` | 3512 | 84.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 38 | 0.9% |
| `consolidation` | 51 | 1.2% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 3084 | 73.9% |
| `op_return` | 2127 | 51.0% |
| `round_number_payment` | 172 | 4.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1637 | 39.2% |
| batch_payment | 2190 | 52.5% |
| consolidation | 51 | 1.2% |
| coinjoin | 38 | 0.9% |
| coinbase | 1 | 0.0% |
| unknown | 257 | 6.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.36 |
| Median | 1923.89 |
| Mean | 2171.15 |
| Maximum | 8083.64 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed2d8e6f21ed4a… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2332380b09ee6e2… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf661784d8225c6… |
| `` | coinjoin | CoinJoin: 6 equal outputs of 600 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf661784d8225c6… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "SATFLOW" |
| `` | batch_payment | OP_RETURN data (unknown): "4OT:to:LTC:ltc1q7fgtcpgflntfxz45829xlea6…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf661784d8225c6… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 30 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8190ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "SGl:to:USDT(TRON):TH5Uvj5HktAxz1QsKCRzog…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:DD21B957B5ADF270952ADBB203C05213A2E2…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:52F3E965CAD4F3C0CA906664747A1A058387…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf661784d8225c6… |

---

## Block #907159

**Block Hash:** `00000000000000000000f21de756a29dca40b2f052a86d587bbb1f8ec46a1dd0`  
**Height:** 907159  
**Transactions:** 2982  
**Flagged:** 2260 (75.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 747 | 25.1% |
| `change_detection` | 2027 | 68.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 54 | 1.8% |
| `consolidation` | 109 | 3.7% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 1270 | 42.6% |
| `op_return` | 102 | 3.4% |
| `round_number_payment` | 398 | 13.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1941 | 65.1% |
| batch_payment | 318 | 10.7% |
| consolidation | 109 | 3.7% |
| coinjoin | 54 | 1.8% |
| coinbase | 1 | 0.0% |
| unknown | 559 | 18.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 34.77 |
| Median | 2680.90 |
| Mean | 8640.68 |
| Maximum | 46601.39 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed9593c5667886… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 20 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "DAl:to:USDT(TRON):TQXYCau12GvSVCh4GWLCZz…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bee54ab2682f91f… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 14 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "0Gm:to:TRX:TVDqRNeBqs7efNt1qEV3gJc4czukQ…" |
| `` | batch_payment | OP_RETURN data (unknown): "1vr:to:TRX:TK7GVgJc82WiJBj1n6gqayx437PRE…" |
| `` | batch_payment | OP_RETURN data (unknown): "4S6:to:BNB(BSC):0xEEf034Ed05B11D5168Bff0…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bee54ab2682f91f… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907206

**Block Hash:** `0000000000000000000230fd85a89b40c5470c7b6a33ac9355289fd5608e8312`  
**Height:** 907206  
**Transactions:** 3734  
**Flagged:** 3332 (89.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 365 | 9.8% |
| `change_detection` | 3175 | 85.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 49 | 1.3% |
| `consolidation` | 64 | 1.7% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 2744 | 73.5% |
| `op_return` | 1509 | 40.4% |
| `round_number_payment` | 210 | 5.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1762 | 47.2% |
| batch_payment | 1598 | 42.8% |
| consolidation | 64 | 1.7% |
| coinjoin | 49 | 1.3% |
| coinbase | 1 | 0.0% |
| unknown | 260 | 7.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 10.00 |
| Median | 2009.01 |
| Mean | 6897.05 |
| Maximum | 23281.52 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edfa50afc2bdf1… |
| `` | batch_payment | OP_RETURN data (unknown): "ijm:to:USDC:0xC9AEE1740Da06F194b9a5a257D…" |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 45 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b90e4f2a0ed7ab6… |
| `` | consolidation | Consolidation: 19 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b90e4f2a0ed7ab6… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "w7b:to:TRX:TPqg4GJpVPSHXi4nHF7dMdaHS6ERs…" |
| `` | simple_payment | OP_RETURN data (unknown): "SATFLOW" |
| `` | batch_payment | OP_RETURN data (unknown): "DE8:to:USDT(BSC):0x79bc50ba5186729018944…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "9Am:to:TRX:THyQjVk1BqpwStmcvQmjzCQfJKmPr…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |

---

## Block #907192

**Block Hash:** `00000000000000000000917fdca84b1e7994e19e63d8b0afa0bac966b0d3a93c`  
**Height:** 907192  
**Transactions:** 3138  
**Flagged:** 2318 (73.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 698 | 22.2% |
| `change_detection` | 2069 | 65.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 28 | 0.9% |
| `consolidation` | 112 | 3.6% |
| `self_transfer` | 6 | 0.2% |
| `peeling_chain` | 1293 | 41.2% |
| `op_return` | 93 | 3.0% |
| `round_number_payment` | 362 | 11.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2187 | 69.7% |
| batch_payment | 271 | 8.6% |
| consolidation | 112 | 3.6% |
| coinjoin | 28 | 0.9% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 536 | 17.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 4.61 |
| Median | 1695.68 |
| Mean | 1685.95 |
| Maximum | 10529.97 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edbb422a6e5040… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9c081aed7876d4… |
| `` | batch_payment | OP_RETURN data (unknown): "WvS:to:USDT(TRON):THyQjVk1BqpwStmcvQmjzC…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9c081aed7876d4… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9c081aed7876d4… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9c081aed7876d4… |
| `` | simple_payment | OP_RETURN data (unknown):  |
| `` | simple_payment | OP_RETURN data (unknown): "=:s:0xF5B6EC05Cdc743688608008c8578490eeD…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9c081aed7876d4… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 160200c0a23303d88294… |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:6BC6312457CCCDBC3E6D79E61CCB61328B45…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:85E5A26F57E2A0A65961DFE02687D25B30E7…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9c081aed7876d4… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b9c081aed7876d4… |

---

## Block #907157

**Block Hash:** `00000000000000000000c367bb4d7d1f8baff5ca259173797ae6084bbdeaee60`  
**Height:** 907157  
**Transactions:** 3639  
**Flagged:** 2719 (74.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 767 | 21.1% |
| `change_detection` | 2435 | 66.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 28 | 0.8% |
| `consolidation` | 136 | 3.7% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 1513 | 41.6% |
| `op_return` | 67 | 1.8% |
| `round_number_payment` | 545 | 15.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2661 | 73.1% |
| batch_payment | 231 | 6.3% |
| consolidation | 136 | 3.7% |
| coinjoin | 28 | 0.8% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 581 | 16.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1394.79 |
| Median | 2457.87 |
| Mean | 8363.92 |
| Maximum | 32459.14 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9eda2176730acb6… |
| `` | consolidation | Consolidation: 42 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "WsU:to:USDT(TRON):TLKtFYjDeZT1n8H6L393CM…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd49415390ff339… |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown):  |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd49415390ff339… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd49415390ff339… |
| `` | simple_payment | OP_RETURN data (unknown): "xQV:to:USDT(TRON):TVEcSsTMBPy9S6G8dTbg31…" |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd49415390ff339… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd49415390ff339… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bd49415390ff339… |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:C28C63E6B485BADA369B0BDB3BF1FAC3D99F…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:460FEE960D6BCCE566AAC5D6329985B0D31D…" |

---

## Block #907189

**Block Hash:** `00000000000000000000543a25302d20833a9afb91bed2018458945a12228e8b`  
**Height:** 907189  
**Transactions:** 4464  
**Flagged:** 4236 (94.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 156 | 3.5% |
| `change_detection` | 4180 | 93.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 14 | 0.3% |
| `consolidation` | 21 | 0.5% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 4032 | 90.3% |
| `op_return` | 3859 | 86.4% |
| `round_number_payment` | 77 | 1.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 404 | 9.1% |
| batch_payment | 3896 | 87.3% |
| consolidation | 21 | 0.5% |
| coinjoin | 14 | 0.3% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 125 | 2.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 31.91 |
| Median | 1318.28 |
| Mean | 11996.96 |
| Maximum | 86017.48 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edc790b67c184c… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bea63ebc2385baf… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bea63ebc2385baf… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bea63ebc2385baf… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bea63ebc2385baf… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bea63ebc2385baf… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "8Sg:to:USDT(TRON):TMPxDU5nkm4BJfMb5AjRZd…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |

---

## Block #907165

**Block Hash:** `00000000000000000000c393f7659335ca7de773717644eff5639ad442dc49d8`  
**Height:** 907165  
**Transactions:** 2418  
**Flagged:** 2062 (85.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 804 | 33.3% |
| `change_detection` | 1906 | 78.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 68 | 2.8% |
| `consolidation` | 102 | 4.2% |
| `self_transfer` | 4 | 0.2% |
| `peeling_chain` | 1194 | 49.4% |
| `op_return` | 85 | 3.5% |
| `round_number_payment` | 256 | 10.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1311 | 54.2% |
| batch_payment | 295 | 12.2% |
| consolidation | 102 | 4.2% |
| coinjoin | 68 | 2.8% |
| self_transfer | 4 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 637 | 26.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 0.00 |
| Median | 1524.73 |
| Mean | 3261.81 |
| Maximum | 66610.57 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed90f4b53cf611… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2838ed5a4ddfb… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2838ed5a4ddfb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2838ed5a4ddfb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2838ed5a4ddfb… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "lAt:to:USDC:0xeeb7f8b9d40a4ea5859e8a7c0d…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 58 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2838ed5a4ddfb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2838ed5a4ddfb… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba2838ed5a4ddfb… |
| `` | consolidation | Consolidation: 197 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 7 equal outputs of 330 sat (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |

---

## Block #907211

**Block Hash:** `00000000000000000001f63c070dc161235564b53af28392d7d0b19f4ce67487`  
**Height:** 907211  
**Transactions:** 3780  
**Flagged:** 2307 (61.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 446 | 11.8% |
| `change_detection` | 2149 | 56.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 46 | 1.2% |
| `consolidation` | 79 | 2.1% |
| `self_transfer` | 7 | 0.2% |
| `peeling_chain` | 1651 | 43.7% |
| `op_return` | 359 | 9.5% |
| `round_number_payment` | 249 | 6.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2776 | 73.4% |
| batch_payment | 548 | 14.5% |
| consolidation | 79 | 2.1% |
| coinjoin | 46 | 1.2% |
| self_transfer | 6 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 324 | 8.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 4.16 |
| Median | 968.06 |
| Mean | 6193.57 |
| Maximum | 41402.31 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed2afc188d82f3… |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2331ce1c02301 |
| `` | consolidation | Consolidation: 45 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b334caba6f85c11… |
| `` | batch_payment | OP_RETURN data (unknown): 160100caa2338b079263… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 50 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "{"p":"https://mezcal.sh","edicts":[["1:0…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b334caba6f85c11… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b334caba6f85c11… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "6ZV:to:USDT(TRON):TGtHae39e8QYGAc6zX366q…" |
| `` | batch_payment | OP_RETURN data (unknown): "0ro:to:USDT(POL):0xa53fb7890236156e27767…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907217

**Block Hash:** `00000000000000000001bc0f94834c5231e0fc6ee0f8530eafc112b7051c7f72`  
**Height:** 907217  
**Transactions:** 4869  
**Flagged:** 4492 (92.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 152 | 3.1% |
| `change_detection` | 4446 | 91.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 13 | 0.3% |
| `consolidation` | 18 | 0.4% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 4162 | 85.5% |
| `op_return` | 3418 | 70.2% |
| `round_number_payment` | 95 | 2.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1330 | 27.3% |
| batch_payment | 3385 | 69.5% |
| consolidation | 18 | 0.4% |
| coinjoin | 13 | 0.3% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 117 | 2.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 6.02 |
| Median | 1049.70 |
| Mean | 1356.14 |
| Maximum | 49102.40 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed0c60018136e7… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf898a565feef5f… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf898a565feef5f… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "o3I:to:TRX:TSh8EGQCJwr6RGWmcrry6NaAL5XMj…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf898a565feef5f… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf898a565feef5f… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf898a565feef5f… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf898a565feef5f… |
| `` | consolidation | Consolidation: 27 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00caa2338b07d0e9c002… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf898a565feef5f… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | simple_payment | OP_RETURN data (unknown): 1198ac37b81755 |
| `` | batch_payment | OP_RETURN data (unknown): 00081b54e30ffb60e37a… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (high confidence) |

---

## Block #907198

**Block Hash:** `00000000000000000000086a84d1e079444417af97475cc4a800d9b53628abe8`  
**Height:** 907198  
**Transactions:** 3177  
**Flagged:** 1825 (57.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 539 | 17.0% |
| `change_detection` | 1638 | 51.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 62 | 2.0% |
| `consolidation` | 87 | 2.7% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 959 | 30.2% |
| `op_return` | 90 | 2.8% |
| `round_number_payment` | 299 | 9.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2297 | 72.3% |
| batch_payment | 319 | 10.0% |
| consolidation | 87 | 2.7% |
| coinjoin | 62 | 2.0% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 410 | 12.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 833.33 |
| Median | 4800.37 |
| Mean | 4800.37 |
| Maximum | 8767.40 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9eda6ef79d8769e… |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "aZM:to:USDC:0x8DeDf1f290F460c25b6466738d…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1b36652c1b5a8f… |
| `` | batch_payment | OP_RETURN data (unknown): "SYJ:to:SOL:6RXXk5ArvTnNASbfs2bguz6fbPvec…" |
| `` | consolidation | Consolidation: 336 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 6 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 5 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 600 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 16 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b1b36652c1b5a8f… |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | consolidation | Consolidation: 26 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 39 inputs → 1 outputs (high confidence) |
| `` | unknown | OP_RETURN data (unknown): "159857" |
| `` | unknown | OP_RETURN data (unknown): "159859" |

---

## Block #907215

**Block Hash:** `00000000000000000001dbc6fb03e922ad59646f859fbcb4cb6663b94474116b`  
**Height:** 907215  
**Transactions:** 3863  
**Flagged:** 2930 (75.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 422 | 10.9% |
| `change_detection` | 2713 | 70.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 44 | 1.1% |
| `consolidation` | 116 | 3.0% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 2340 | 60.6% |
| `op_return` | 1435 | 37.1% |
| `round_number_payment` | 169 | 4.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1921 | 49.7% |
| batch_payment | 1498 | 38.8% |
| consolidation | 116 | 3.0% |
| coinjoin | 44 | 1.1% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 282 | 7.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 632.82 |
| Median | 2107.68 |
| Mean | 6341.75 |
| Maximum | 20518.83 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9eda00edf457182… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 23 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b21e0ef573fe31b… |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b21e0ef573fe31b… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |

---

## Block #907202

**Block Hash:** `0000000000000000000100bf521d978db63a1e6695f382c413eda4378dfccac7`  
**Height:** 907202  
**Transactions:** 3692  
**Flagged:** 2801 (75.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 798 | 21.6% |
| `change_detection` | 2460 | 66.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 78 | 2.1% |
| `consolidation` | 149 | 4.0% |
| `self_transfer` | 8 | 0.2% |
| `peeling_chain` | 1494 | 40.5% |
| `op_return` | 109 | 3.0% |
| `round_number_payment` | 538 | 14.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2404 | 65.1% |
| batch_payment | 476 | 12.9% |
| consolidation | 149 | 4.0% |
| coinjoin | 78 | 2.1% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 581 | 15.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 6.31 |
| Median | 1872.73 |
| Mean | 5436.24 |
| Maximum | 64772.53 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 737973bce6b7b8c7f837… |
| `` | batch_payment | OP_RETURN data (unknown): 000100b8170200000001 |
| `` | batch_payment | OP_RETURN data (unknown): "EiN:to:USDC:0xC9AEE1740Da06F194b9a5a257D…" |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 52 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b3b2633f607697a… |
| `` | batch_payment | OP_RETURN data (unknown): "aGP:to:USDT(TRON):TDoN4zju9AVD3yv7zwb4VN…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 555 sat (low confidence) |
| `` | consolidation | Consolidation: 17 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |

---

## Block #907212

**Block Hash:** `00000000000000000000754a5a8b23924b1d7e9d86ad08212382b9b2d96a2a9d`  
**Height:** 907212  
**Transactions:** 3293  
**Flagged:** 2447 (74.3%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 808 | 24.5% |
| `change_detection` | 2173 | 66.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 97 | 2.9% |
| `consolidation` | 133 | 4.0% |
| `self_transfer` | 5 | 0.2% |
| `peeling_chain` | 1303 | 39.6% |
| `op_return` | 94 | 2.9% |
| `round_number_payment` | 422 | 12.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2019 | 61.3% |
| batch_payment | 449 | 13.6% |
| consolidation | 133 | 4.0% |
| coinjoin | 97 | 2.9% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 592 | 18.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 5.98 |
| Median | 1591.79 |
| Mean | 6557.55 |
| Maximum | 58906.72 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edfbe59cc2e20d… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 1500000 sat (low confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 15 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 45 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 35 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 20 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf99eed77068f06… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "B5e:to:USDT(TRON):TVbCMttDYYUMXSxKrwR5Um…" |
| `` | batch_payment | OP_RETURN data (unknown): "tgw:to:LINK(BSC):0x62Da8d917846A16e171d6…" |
| `` | batch_payment | OP_RETURN data (unknown): "ZBt:to:AVAX(C-Chain):0x0110CbB368013bc6c…" |
| `` | batch_payment | OP_RETURN data (unknown): "SCD:to:USDT(ERC20):0xD5E06878CF6BDd4e962…" |
| `` | batch_payment | OP_RETURN data (unknown): "dwV:to:USDT(ERC20):0xCf11D5077C205826c76…" |
| `` | batch_payment | OP_RETURN data (unknown): "CXy:to:ETH(ARB):0x3EcF9a746dCEda00cEA11A…" |
| `` | batch_payment | OP_RETURN data (unknown): "Lo8:to:USDT(TRON):TRrPkvohgBBwhTLwsv3Lzp…" |

---

## Block #907216

**Block Hash:** `000000000000000000002cd9b9d87e0f952445cb6a85833f9200a29012b13a28`  
**Height:** 907216  
**Transactions:** 4384  
**Flagged:** 3868 (88.2%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 368 | 8.4% |
| `change_detection` | 3749 | 85.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 44 | 1.0% |
| `consolidation` | 79 | 1.8% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 3261 | 74.4% |
| `op_return` | 2362 | 53.9% |
| `round_number_payment` | 193 | 4.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1588 | 36.2% |
| batch_payment | 2414 | 55.1% |
| consolidation | 79 | 1.8% |
| coinjoin | 44 | 1.0% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 256 | 5.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 385.27 |
| Median | 2251.14 |
| Mean | 3874.36 |
| Maximum | 16118.16 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed8b64492a22c7… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300000 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330388d4eef257… |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bacb80397457446… |
| `` | batch_payment | OP_RETURN data (unknown): "BFY:to:TRX:TQrCnTSgQn84ya8kcEZmwvPTo2gde…" |
| `` | batch_payment | OP_RETURN data (unknown): "{"p":"https://mezcal.sh","edicts":[["1:0…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bacb80397457446… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |

---

## Block #907225

**Block Hash:** `0000000000000000000180177d56f748b43eaf879a69250128180b47b2a51cb0`  
**Height:** 907225  
**Transactions:** 3808  
**Flagged:** 3157 (82.9%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 506 | 13.3% |
| `change_detection` | 2935 | 77.1% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 53 | 1.4% |
| `consolidation` | 94 | 2.5% |
| `self_transfer` | 11 | 0.3% |
| `peeling_chain` | 2329 | 61.2% |
| `op_return` | 1613 | 42.4% |
| `round_number_payment` | 338 | 8.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1472 | 38.7% |
| batch_payment | 1818 | 47.7% |
| consolidation | 94 | 2.5% |
| coinjoin | 53 | 1.4% |
| self_transfer | 6 | 0.2% |
| coinbase | 1 | 0.0% |
| unknown | 364 | 9.6% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 15.76 |
| Median | 1975.99 |
| Mean | 1987.00 |
| Maximum | 10046.84 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edbf07cac227b7… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 23 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 18 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 71 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "f7D:to:USDT(TRON):TXR6p3GuBncNWMgbzfh9yT…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba4654f4580d9a5… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba4654f4580d9a5… |
| `` | batch_payment | OP_RETURN data (unknown): 58325ba4654f4580d9a5… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00c0a2330380e497d012… |

---

## Block #907194

**Block Hash:** `00000000000000000001fd4187672d1c3d2048c810381c3178b1b1965d4319c7`  
**Height:** 907194  
**Transactions:** 3645  
**Flagged:** 2691 (73.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 365 | 10.0% |
| `change_detection` | 2562 | 70.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 38 | 1.0% |
| `consolidation` | 66 | 1.8% |
| `self_transfer` | 3 | 0.1% |
| `peeling_chain` | 2206 | 60.5% |
| `op_return` | 1722 | 47.2% |
| `round_number_payment` | 175 | 4.8% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1509 | 41.4% |
| batch_payment | 1771 | 48.6% |
| consolidation | 66 | 1.8% |
| coinjoin | 38 | 1.0% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 257 | 7.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 852.50 |
| Median | 1971.51 |
| Mean | 3224.04 |
| Maximum | 12476.41 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed2a2ee053408b… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "Starbear16000@gmail.com. Amazon 50€" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2d0f17cdc693a2… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2d0f17cdc693a2… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2d0f17cdc693a2… |
| `` | batch_payment | OP_RETURN data (unknown): "gdK:to:BNB(BSC):0x68ad0474821e4b4ea42ab3…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:67EC114E3A7981D2562341656F8495312FDF…" |
| `` | consolidation | Consolidation: 80 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2d0f17cdc693a2… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2d0f17cdc693a2… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | unknown | OP_RETURN data (unknown): 00c0a23303a0d38c8f01… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #907223

**Block Hash:** `00000000000000000001617b4e601e2c0f56327a0cad5ca9783020c4005757ce`  
**Height:** 907223  
**Transactions:** 4671  
**Flagged:** 4369 (93.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 245 | 5.2% |
| `change_detection` | 4292 | 91.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 31 | 0.7% |
| `consolidation` | 28 | 0.6% |
| `self_transfer` | 6 | 0.1% |
| `peeling_chain` | 4012 | 85.9% |
| `op_return` | 3692 | 79.0% |
| `round_number_payment` | 191 | 4.1% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 664 | 14.2% |
| batch_payment | 3748 | 80.2% |
| consolidation | 28 | 0.6% |
| coinjoin | 31 | 0.7% |
| self_transfer | 2 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 197 | 4.2% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 5.08 |
| Median | 1326.41 |
| Mean | 1176.35 |
| Maximum | 2009.95 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed596d94bd606f… |
| `` | consolidation | Consolidation: 22 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7c6690bd81e811… |
| `` | batch_payment | OP_RETURN data (unknown): "I4Z:to:TRX:THKa8Qrnk1kV99dpL5cwT9TPGPG3o…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7c6690bd81e811… |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "QLI:to:BTCB:0xe7858620698e6443822cf24adc…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7c6690bd81e811… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b7c6690bd81e811… |
| `` | consolidation | Consolidation: 33 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | self_transfer | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 330 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:A16D0D6C21DBD75943F0EB0A759D388F35EF…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:97B9A7C9F8F04E0D1F6AE18494F57ECC2495…" |

---

## Block #907173

**Block Hash:** `00000000000000000000ef47adfd64789a78fa10176bfe2a12780ab017939628`  
**Height:** 907173  
**Transactions:** 3248  
**Flagged:** 2895 (89.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 384 | 11.8% |
| `change_detection` | 2790 | 85.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 21 | 0.6% |
| `consolidation` | 53 | 1.6% |
| `self_transfer` | 6 | 0.2% |
| `peeling_chain` | 2320 | 71.4% |
| `op_return` | 1899 | 58.5% |
| `round_number_payment` | 170 | 5.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1005 | 30.9% |
| batch_payment | 1894 | 58.3% |
| consolidation | 53 | 1.6% |
| coinjoin | 21 | 0.6% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 271 | 8.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 55.27 |
| Median | 1510.04 |
| Mean | 4262.74 |
| Maximum | 83046.75 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edd335118ba680… |
| `` | consolidation | Consolidation: 44 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b50a4749185894d… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 600 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 600 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b50a4749185894d… |
| `` | coinjoin | CoinJoin: 29 equal outputs of 546 sat (high confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "P9T:to:USDT(TRON):TEs3FdyKWJEeE3Gp3Nq8QF…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "" |
| `` | batch_payment | OP_RETURN data (unknown): "from:1030USDT(TRON):TAH4VXgyMbNUYYk65if6…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "=:BASE.USDC:0x6d25378f0ce267875e642bcc9b…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907207

**Block Hash:** `000000000000000000011fb30597f2c6a38bd750f9b03d2dc3a654a95a4278bb`  
**Height:** 907207  
**Transactions:** 4645  
**Flagged:** 4312 (92.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 182 | 3.9% |
| `change_detection` | 4229 | 91.0% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 26 | 0.6% |
| `consolidation` | 39 | 0.8% |
| `self_transfer` | 7 | 0.2% |
| `peeling_chain` | 3902 | 84.0% |
| `op_return` | 3503 | 75.4% |
| `round_number_payment` | 125 | 2.7% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1001 | 21.6% |
| batch_payment | 3449 | 74.3% |
| consolidation | 39 | 0.8% |
| coinjoin | 26 | 0.6% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 126 | 2.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 5.01 |
| Median | 999.58 |
| Mean | 1146.94 |
| Maximum | 24086.92 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed8defbd808fea… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 38 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "159870" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf0811619e103e0… |
| `` | coinjoin | CoinJoin: 7 equal outputs of 600 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf0811619e103e0… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "SATFLOW" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf0811619e103e0… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf0811619e103e0… |
| `` | batch_payment | OP_RETURN data (unknown): "DOe:to:BNB(BSC):0x591064C4c8549703950659…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | consolidation | Consolidation: 19 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:1311ACDC332E4C1A2537C16A61172145C811…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:8B253097C5F33D79B09CAFCBA0E80EE63D41…" |

---

## Block #907214

**Block Hash:** `00000000000000000001b817da306ae133f9a76dd7ca3fcff96f9c3f17638373`  
**Height:** 907214  
**Transactions:** 3404  
**Flagged:** 2037 (59.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 231 | 6.8% |
| `change_detection` | 1953 | 57.4% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 22 | 0.6% |
| `consolidation` | 48 | 1.4% |
| `self_transfer` | 7 | 0.2% |
| `peeling_chain` | 1681 | 49.4% |
| `op_return` | 1400 | 41.1% |
| `round_number_payment` | 121 | 3.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1741 | 51.1% |
| batch_payment | 1426 | 41.9% |
| consolidation | 48 | 1.4% |
| coinjoin | 22 | 0.6% |
| self_transfer | 2 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 164 | 4.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 25.56 |
| Median | 1526.55 |
| Mean | 2789.23 |
| Maximum | 78321.75 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edae0162f36354… |
| `` | batch_payment | OP_RETURN data (unknown): "jSA:to:SOL:6XK8u83jiKH4c3naXgpjeXGnYrxdK…" |
| `` | batch_payment | OP_RETURN data (unknown): "yEh:to:XRP:r9KPru4AZeFXouwkrHYvcvk7SkgmP…" |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "tA9:to:DOGE:DQ3YHLHMGUBVqhbTTXGusKYq2sHR…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf848691b4822d7… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 13 inputs → 1 outputs (high confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 564092 sat (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf848691b4822d7… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf848691b4822d7… |
| `` | consolidation | Consolidation: 20 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf848691b4822d7… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf848691b4822d7… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bf848691b4822d7… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |

---

## Block #907218

**Block Hash:** `00000000000000000000320ad7ef961830c6c12c8dfcef824bf50b0f7eabb521`  
**Height:** 907218  
**Transactions:** 4346  
**Flagged:** 4259 (98.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 56 | 1.3% |
| `change_detection` | 4242 | 97.6% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 5 | 0.1% |
| `consolidation` | 8 | 0.2% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 4166 | 95.9% |
| `op_return` | 4114 | 94.7% |
| `round_number_payment` | 25 | 0.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 195 | 4.5% |
| batch_payment | 4092 | 94.2% |
| consolidation | 8 | 0.2% |
| coinjoin | 5 | 0.1% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 44 | 1.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 24.30 |
| Median | 374.14 |
| Mean | 5667.00 |
| Maximum | 44536.03 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed23f170786508… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 11 equal outputs of 600 sat (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): " " |
| `` | simple_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |
| `` | batch_payment | OP_RETURN data (unknown): " " |

---

## Block #907220

**Block Hash:** `00000000000000000000b9ca710a2d6c958492c78c4592a7190a5811d92a7718`  
**Height:** 907220  
**Transactions:** 4226  
**Flagged:** 3869 (91.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 294 | 7.0% |
| `change_detection` | 3773 | 89.3% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 35 | 0.8% |
| `consolidation` | 52 | 1.2% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 3294 | 77.9% |
| `op_return` | 3042 | 72.0% |
| `round_number_payment` | 183 | 4.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 947 | 22.4% |
| batch_payment | 2978 | 70.5% |
| consolidation | 52 | 1.2% |
| coinjoin | 35 | 0.8% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 212 | 5.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.47 |
| Median | 1122.59 |
| Mean | 6948.80 |
| Maximum | 31249.96 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edc6057a820ff4… |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 17 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b08cd130cea6794… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b08cd130cea6794… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 330 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b08cd130cea6794… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | simple_payment | OP_RETURN data (unknown): "to:USDT(TRON):TVjefWD8gwP3impCjfu23N4QcM…" |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b08cd130cea6794… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "aGC:to:LTC:ltc1q6xh0e0d29jtanfhz3ftudgdp…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:FB3998DBDB15DDF1B347EBD4439FEE920AFF…" |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b08cd130cea6794… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b08cd130cea6794… |
| `` | consolidation | Consolidation: 80 inputs → 1 outputs (high confidence) |

---

## Block #907226

**Block Hash:** `000000000000000000013c7dea3e939ab1e67c7ec7e15e8a677f1acf6e4adabf`  
**Height:** 907226  
**Transactions:** 3887  
**Flagged:** 3420 (88.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 258 | 6.6% |
| `change_detection` | 3333 | 85.7% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 22 | 0.6% |
| `consolidation` | 52 | 1.3% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 3089 | 79.5% |
| `op_return` | 2818 | 72.5% |
| `round_number_payment` | 129 | 3.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 747 | 19.2% |
| batch_payment | 2876 | 74.0% |
| consolidation | 52 | 1.3% |
| coinjoin | 22 | 0.6% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 188 | 4.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 2760.46 |
| Median | 18162.93 |
| Mean | 25351.18 |
| Maximum | 57468.46 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed8ff180a16d8e… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 58 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 24 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb0f706a00fc363… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb0f706a00fc363… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "vQv:to:TRX:TUWRxLdrXYDRQiWp57Uf48sxYC4Pv…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb0f706a00fc363… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb0f706a00fc363… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 330 sat (low confidence) |
| `` | consolidation | Consolidation: 26 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:6369A474006D33E360071F0AB14474A067D5…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb0f706a00fc363… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb0f706a00fc363… |

---

## Block #907209

**Block Hash:** `0000000000000000000069fcdb9852550a9b9ddea5e6b022642d79a44febd7e4`  
**Height:** 907209  
**Transactions:** 2320  
**Flagged:** 1720 (74.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 496 | 21.4% |
| `change_detection` | 1480 | 63.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 64 | 2.8% |
| `consolidation` | 114 | 4.9% |
| `self_transfer` | 2 | 0.1% |
| `peeling_chain` | 882 | 38.0% |
| `op_return` | 92 | 4.0% |
| `round_number_payment` | 307 | 13.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1471 | 63.4% |
| batch_payment | 336 | 14.5% |
| consolidation | 114 | 4.9% |
| coinjoin | 64 | 2.8% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 333 | 14.4% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.74 |
| Median | 1829.70 |
| Mean | 5591.76 |
| Maximum | 55447.41 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edbde4bdb63711… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 300000 sat (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 170670 sat (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 32 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 27 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "N68:to:USDT(ERC20):0x5E45831C410b42EbfA3…" |
| `` | coinjoin | CoinJoin: 2 equal outputs of 139200 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "PIl:to:XRP:rhQBrqH214ELqnKEDezAFe3H9n3Rp…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb71dcc3fc50b52… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 120000 sat (low confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |

---

## Block #907227

**Block Hash:** `00000000000000000000f03e484ef1ea78ece74f703fda501cef67447fd68949`  
**Height:** 907227  
**Transactions:** 4541  
**Flagged:** 3943 (86.8%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 603 | 13.3% |
| `change_detection` | 3734 | 82.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 80 | 1.8% |
| `consolidation` | 98 | 2.2% |
| `self_transfer` | 4 | 0.1% |
| `peeling_chain` | 1076 | 23.7% |
| `op_return` | 2175 | 47.9% |
| `round_number_payment` | 376 | 8.3% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 3548 | 78.1% |
| batch_payment | 356 | 7.8% |
| consolidation | 98 | 2.2% |
| coinjoin | 80 | 1.8% |
| self_transfer | 3 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 455 | 10.0% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1212.39 |
| Median | 2382.89 |
| Mean | 2344.77 |
| Maximum | 3400.91 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed1cff8dec0e6b… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 13 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 17 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 8 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 63 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 66 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "tv0:to:USDT(TRON):TLnKzrD591BcjvotQ7G4Ym…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2d24f4b1694d3a… |
| `` | consolidation | Consolidation: 190 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 104 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 21 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b2d24f4b1694d3a… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "zEf:to:USDT(TRON):TGWXXygirABm7pVqkyvEn4…" |
| `` | consolidation | Consolidation: 16 inputs → 1 outputs (high confidence) |

---

## Block #907234

**Block Hash:** `00000000000000000000f49f1a07ddaf9689e8a3a7a4f623ab4bea41d16135d1`  
**Height:** 907234  
**Transactions:** 4861  
**Flagged:** 4351 (89.5%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 98 | 2.0% |
| `change_detection` | 4301 | 88.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 9 | 0.2% |
| `consolidation` | 21 | 0.4% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 4122 | 84.8% |
| `op_return` | 4042 | 83.2% |
| `round_number_payment` | 46 | 0.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 733 | 15.1% |
| batch_payment | 4033 | 83.0% |
| consolidation | 21 | 0.4% |
| coinjoin | 9 | 0.2% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 63 | 1.3% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 343.72 |
| Median | 1759.95 |
| Mean | 5008.75 |
| Maximum | 25948.66 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edde7569117a11… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): "GeI:to:LTC:ltc1q3caw9rxxqvlckmvwhz3tpxny…" |
| `` | consolidation | Consolidation: 29 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 43 inputs → 2 outputs (high confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "SATFLOW" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bde65d173b07cbf… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bde65d173b07cbf… |
| `` | consolidation | Consolidation: 6 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "fLF:to:LTC:ltc1qaf29e7s4wuw2wgrrk097ywcf…" |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bde65d173b07cbf… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bde65d173b07cbf… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bde65d173b07cbf… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 160000caa2338b070000 |

---

## Block #907228

**Block Hash:** `00000000000000000001434579b1044e516832a3de74a7e791e0c499c7d09919`  
**Height:** 907228  
**Transactions:** 4684  
**Flagged:** 4167 (89.0%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 257 | 5.5% |
| `change_detection` | 4086 | 87.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 33 | 0.7% |
| `consolidation` | 38 | 0.8% |
| `self_transfer` | 5 | 0.1% |
| `peeling_chain` | 417 | 8.9% |
| `op_return` | 3593 | 76.7% |
| `round_number_payment` | 104 | 2.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 4239 | 90.5% |
| batch_payment | 178 | 3.8% |
| consolidation | 38 | 0.8% |
| coinjoin | 33 | 0.7% |
| self_transfer | 5 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 190 | 4.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 152.50 |
| Median | 532.91 |
| Mean | 1213.87 |
| Maximum | 3595.93 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed0f3fbb2b0b1b… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 80 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6e8af5d056ecec… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6e8af5d056ecec… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6e8af5d056ecec… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6e8af5d056ecec… |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 83400 sat (medium confidence) |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00081bf30ce640da996d… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6e8af5d056ecec… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b6e8af5d056ecec… |
| `` | batch_payment | OP_RETURN data (unknown): "dYM:to:BTCB:0xbbd839dcdc34649e550d13a398…" |
| `` | consolidation | Consolidation: 80 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "4Gs:to:USDT(ERC20):0x0aa19a4f27e114fdd68…" |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |

---

## Block #907232

**Block Hash:** `0000000000000000000197aaca42bfe93c9f418d79511ea51d3f54e2ada6bc49`  
**Height:** 907232  
**Transactions:** 4690  
**Flagged:** 4193 (89.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 173 | 3.7% |
| `change_detection` | 4136 | 88.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 29 | 0.6% |
| `consolidation` | 26 | 0.6% |
| `self_transfer` | 2 | 0.0% |
| `peeling_chain` | 3654 | 77.9% |
| `op_return` | 3644 | 77.7% |
| `round_number_payment` | 75 | 1.6% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 803 | 17.1% |
| batch_payment | 3703 | 79.0% |
| consolidation | 26 | 0.6% |
| coinjoin | 29 | 0.6% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 127 | 2.7% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 803.23 |
| Median | 1917.63 |
| Mean | 2886.90 |
| Maximum | 12780.08 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edcc833b0db7c8… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 26 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5a8d0b8f816976… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5a8d0b8f816976… |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "2sm:to:USDT(BSC):0x520c994c5de732ee9acd7…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5a8d0b8f816976… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5a8d0b8f816976… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b5a8d0b8f816976… |
| `` | coinjoin | CoinJoin: 3 equal outputs of 790 sat (low confidence) |
| `` | coinjoin | CoinJoin: 3 equal outputs of 330 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "Bei:to:BNB(BSC):0x2A3a8BeD64b33f400bcFe0…" |
| `` | consolidation | Consolidation: 8 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 9 inputs → 1 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "=:e:0xd0860433Bd6A1225604AE2Be90F928473A…" |
| `` | consolidation | Consolidation: 15 inputs → 2 outputs (medium confidence) |
| `` | simple_payment | OP_RETURN data (unknown): "joK:to:USDT(TRON):TXP5GghzARXwnARNjkcaT9…" |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |

---

## Block #907182

**Block Hash:** `00000000000000000000f2aca80f5aa34d525a9545fcce6a64e88e83b88aabcc`  
**Height:** 907182  
**Transactions:** 46  
**Flagged:** 37 (80.4%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 7 | 15.2% |
| `change_detection` | 34 | 73.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 2 | 4.3% |
| `consolidation` | 2 | 4.3% |
| `self_transfer` | 0 | 0.0% |
| `peeling_chain` | 18 | 39.1% |
| `op_return` | 5 | 10.9% |
| `round_number_payment` | 7 | 15.2% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 31 | 67.4% |
| batch_payment | 5 | 10.9% |
| consolidation | 2 | 4.3% |
| coinjoin | 2 | 4.3% |
| coinbase | 1 | 2.2% |
| unknown | 5 | 10.9% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1212.76 |
| Median | 53761.90 |
| Mean | 40739.32 |
| Maximum | 67243.30 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed61f9dad66d04… |
| `` | coinjoin | CoinJoin: 4 equal outputs of 1000000 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 00381493ba98251e71bb… |
| `` | consolidation | Consolidation: 194 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 10 inputs → 2 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 546 sat (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | simple_payment | OP_RETURN data (unknown): 50b3b373d2219d2f1200… |

---

## Block #907183

**Block Hash:** `000000000000000000002bab4fbe34e9f2bceda93f051eaf92d049f69718ebc5`  
**Height:** 907183  
**Transactions:** 2522  
**Flagged:** 1910 (75.7%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 537 | 21.3% |
| `change_detection` | 1695 | 67.2% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 12 | 0.5% |
| `consolidation` | 84 | 3.3% |
| `self_transfer` | 2 | 0.1% |
| `peeling_chain` | 1007 | 39.9% |
| `op_return` | 65 | 2.6% |
| `round_number_payment` | 351 | 13.9% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1728 | 68.5% |
| batch_payment | 298 | 11.8% |
| consolidation | 84 | 3.3% |
| coinjoin | 12 | 0.5% |
| self_transfer | 1 | 0.0% |
| coinbase | 1 | 0.0% |
| unknown | 398 | 15.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 751.90 |
| Median | 751.90 |
| Mean | 751.90 |
| Maximum | 751.90 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed33e136bea526… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 17 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 51 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bce2b940420af7e… |
| `` | consolidation | Consolidation: 336 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bce2b940420af7e… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "from:275USDT(TRON):THAb3h9ThhzRP375rkSJt…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bce2b940420af7e… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 14 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 3 equal outputs of 546 sat (medium confidence) |

---

## Block #907213

**Block Hash:** `0000000000000000000161ec7ca3d8c99f97297d9d0b11f5bdb8b19c46d3b345`  
**Height:** 907213  
**Transactions:** 3240  
**Flagged:** 2159 (66.6%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 505 | 15.6% |
| `change_detection` | 1974 | 60.9% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 61 | 1.9% |
| `consolidation` | 77 | 2.4% |
| `self_transfer` | 13 | 0.4% |
| `peeling_chain` | 1439 | 44.4% |
| `op_return` | 507 | 15.6% |
| `round_number_payment` | 274 | 8.5% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 2037 | 62.9% |
| batch_payment | 664 | 20.5% |
| consolidation | 77 | 2.4% |
| coinjoin | 61 | 1.9% |
| self_transfer | 9 | 0.3% |
| coinbase | 1 | 0.0% |
| unknown | 391 | 12.1% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 13.99 |
| Median | 1984.57 |
| Mean | 2662.28 |
| Maximum | 64191.06 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): 7379733cf67527cc7a7a… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfbc95e7f58c296… |
| `` | batch_payment | OP_RETURN data (unknown): "from:2031.373392TRX:TJwoNywdrV7qHXPnZ5kv…" |
| `` | batch_payment | OP_RETURN data (unknown): "from:1050USDC:0xBdcBdbE3847A3ebC048a3014…" |
| `` | batch_payment | OP_RETURN data (unknown): 160100caa2338b079ee6… |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | consolidation | Consolidation: 11 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 7 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfbc95e7f58c296… |
| `` | batch_payment | OP_RETURN data (unknown): "from:2000USDT(TRON):TEeogJjTsqVrraCYbW2D…" |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfbc95e7f58c296… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfbc95e7f58c296… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 546 sat (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfbc95e7f58c296… |
| `` | batch_payment | OP_RETURN data (unknown): 58325bfbc95e7f58c296… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | coinjoin | CoinJoin: 2 equal outputs of 600 sat (low confidence) |

---

## Block #907230

**Block Hash:** `000000000000000000012a3b3deb717bd6a0d34da1630cb2df192a4fd07eff8f`  
**Height:** 907230  
**Transactions:** 3661  
**Flagged:** 3007 (82.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 528 | 14.4% |
| `change_detection` | 2802 | 76.5% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 93 | 2.5% |
| `consolidation` | 81 | 2.2% |
| `self_transfer` | 1 | 0.0% |
| `peeling_chain` | 1863 | 50.9% |
| `op_return` | 1548 | 42.3% |
| `round_number_payment` | 293 | 8.0% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1748 | 47.7% |
| batch_payment | 1341 | 36.6% |
| consolidation | 81 | 2.2% |
| coinjoin | 93 | 2.5% |
| coinbase | 1 | 0.0% |
| unknown | 397 | 10.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 1105.81 |
| Median | 1105.81 |
| Mean | 1105.81 |
| Maximum | 1105.81 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9ed10b56e1b5e1e… |
| `` | simple_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | consolidation | Consolidation: 7 inputs → 2 outputs (low confidence) |
| `` | consolidation | Consolidation: 40 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 49 inputs → 2 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b28e408429774b7… |
| `` | consolidation | Consolidation: 5 inputs → 1 outputs (medium confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b28e408429774b7… |
| `` | coinjoin | CoinJoin: 11 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 8 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 7 equal outputs of 600 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b28e408429774b7… |
| `` | consolidation | Consolidation: 11 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 15 inputs → 1 outputs (high confidence) |
| `` | consolidation | Consolidation: 12 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325b28e408429774b7… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b28e408429774b7… |
| `` | batch_payment | OP_RETURN data (unknown): 58325b28e408429774b7… |
| `` | consolidation | Consolidation: 21 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "TVp:to:TRX:TG8K9PXoRFCGiiLatzFWPECUyGVM1…" |

---

## Block #907233

**Block Hash:** `00000000000000000001b99fbf9d256174a28bf7e2fc351957a881501da2f10e`  
**Height:** 907233  
**Transactions:** 4410  
**Flagged:** 3533 (80.1%)  

### Heuristic Findings

| Heuristic | Fired On (txs) | % of Block |
|-----------|---------------|------------|
| `cioh` | 401 | 9.1% |
| `change_detection` | 3389 | 76.8% |
| `address_reuse` | 0 | 0.0% |
| `coinjoin` | 55 | 1.2% |
| `consolidation` | 49 | 1.1% |
| `self_transfer` | 9 | 0.2% |
| `peeling_chain` | 2692 | 61.0% |
| `op_return` | 2370 | 53.7% |
| `round_number_payment` | 239 | 5.4% |

### Transaction Classifications

| Classification | Count | % |
|----------------|-------|---|
| simple_payment | 1698 | 38.5% |
| batch_payment | 2299 | 52.1% |
| consolidation | 49 | 1.1% |
| coinjoin | 55 | 1.2% |
| self_transfer | 6 | 0.1% |
| coinbase | 1 | 0.0% |
| unknown | 302 | 6.8% |

## Fee Rate Distribution (sat/vB)

| Statistic | Value |
|-----------|-------|
| Minimum | 7.13 |
| Median | 1910.38 |
| Mean | 4936.62 |
| Maximum | 65313.60 |

### Notable Transactions

| TXID | Classification | Key Finding |
|------|----------------|-------------|
| `` | coinbase | OP_RETURN data (unknown): aa21a9edf8c6d82d9f97… |
| `` | consolidation | Consolidation: 14 inputs → 2 outputs (medium confidence) |
| `` | consolidation | Consolidation: 31 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 83 inputs → 2 outputs (high confidence) |
| `` | consolidation | Consolidation: 9 inputs → 2 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb7ecc8566efccb… |
| `` | coinjoin | CoinJoin: 10 equal outputs of 600 sat (high confidence) |
| `` | coinjoin | CoinJoin: 4 equal outputs of 1130800 sat (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): 58325bb7ecc8566efccb… |
| `` | consolidation | Consolidation: 10 inputs → 1 outputs (high confidence) |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f8196ec82d08bc0a8… |
| `` | batch_payment | OP_RETURN data (unknown): ff7f818cec82d08bc0a8… |
| `` | coinjoin | CoinJoin: 3 equal outputs of 600 sat (medium confidence) |
| `` | consolidation | Consolidation: 4 inputs → 1 outputs (low confidence) |
| `` | batch_payment | OP_RETURN data (unknown): "=:ETH.USDC:0x32D5A91268158D8e4470Fd3F0b7…" |
| `` | batch_payment | OP_RETURN data (unknown): "rtd:to:ETH:0x69f32764d17e1815f77974c2c94…" |
| `` | batch_payment | OP_RETURN data (unknown): "OUT:27A577FA06BBC0EEA78B93D3D33F1E7492DD…" |
| `` | batch_payment | OP_RETURN data (unknown): "yOF:to:TRX:TP9EAQkBhhGWkVFuxokoBD8MHKxp5…" |
| `` | batch_payment | OP_RETURN data (unknown): "gwm:to:SOL:HG1oK9YKZtMfobwnUzwtYj2NwSebt…" |

---

## Methodology

All heuristics are probabilistic. Results indicate *likelihood*, not certainty.
See `APPROACH.md` for full confidence models and known limitations.

---
*Generated by Sherlock — Week 3, Summer of Bitcoin 2026*
