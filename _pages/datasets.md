---
layout: archive
title: "Datasets"
permalink: /datasets/
author_profile: true
redirect_from:
  - /datasets
---

{% include base_path %}

<p class="page-kicker"><i class="fas fa-database" aria-hidden="true"></i> Graph datasets & research resources</p>

Curated graph datasets: [GitHub collection](https://github.com/HKBU-LAGAS/Awesome-Graph-Datasets).

<nav class="dataset-jump" aria-label="Dataset categories">
  <a href="#plain-graphs" aria-label="Plain graphs">Plain</a>
  <a href="#attributed-graphs" aria-label="Attributed graphs">Attributed</a>
  <a href="#bipartite-graphs" aria-label="Bipartite graphs">Bipartite</a>
  <a href="#dataset-repositories">Repositories</a>
</nav>

<p class="table-hint"><i class="fas fa-arrows-alt-h" aria-hidden="true"></i> Scroll inside each table to view more rows or columns.</p>

<h2 id="plain-graphs"><i class="fas fa-project-diagram" aria-hidden="true"></i> Plain Graphs</h2>

<div class="dataset-table dataset-table--plain" role="region" aria-label="Plain graph datasets" tabindex="0" markdown="1">

| Name    | #nodes    | #edges    | #labels | Type        | URL       |
|-------  |---------  |---------  |---------|-----------  |---------  |
| PPI |  3,890  |   76,584 | 50  | undirected  | [Raw](https://github.com/xptree/LightNE) [Raw](http://snap.stanford.edu/node2vec/) <span class="dataset-unavailable" role="link" aria-disabled="true" title="No download URL was provided in the source list">Preprocessed</span> |
| Blogcatalog3 |  10,312  |  333,983   | 39  | undirected  | [Raw](https://github.com/xptree/LightNE) [Raw](http://leitang.net/code/social-dimension/data/blogcatalog.mat) <span class="dataset-unavailable" role="link" aria-disabled="true" title="No download URL was provided in the source list">Preprocessed</span> |
| Flickr |  80,513 |  5,899,882  |   195    | undirected  | [Raw](https://github.com/xptree/LightNE) [Raw](http://leitang.net/code/social-dimension/data/flickr.mat) <span class="dataset-unavailable" role="link" aria-disabled="true" title="No download URL was provided in the source list">Preprocessed</span> |
| Amazon |  334863 |  925872  |   100    | undirected  | [Raw](https://snap.stanford.edu/data/com-Amazon.html) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
| DBLP | 425957  |  1049866  |   100    | undirected  | [Raw](https://snap.stanford.edu/data/com-DBLP.html) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
| Youtube | 1,138,499   | 2,990,443   | 47      | undirected  | [Raw](http://socialcomputing.asu.edu/datasets/YouTube2) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
| TWeibo  | 2,320,895   | 50,655,143  | 100     | directed    | [Raw](https://www.kaggle.com/c/kddcup2012-track1) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
| Orkut   | 3,072,441   | 117,185,084 | 100     | undirected  | [Raw](http://snap.stanford.edu/data/com-Orkut.html) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
|LiveJournal  | 3997962 | 34681189 |  100   |  undirected  |  [Raw](https://snap.stanford.edu/data/com-LiveJournal.html) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)         |
|In-2004  | 1,382,908 | 16,539,643|    -    |   directed  |  [Raw](http://law.di.unimi.it/webdata/in-2004/)  [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
|DBLP     | 5,425,963 | 17,298,032|    -    |   undirected|  [Raw](http://konect.uni-koblenz.de/networks/dblp-author)  [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)        |
|Pokec    | 1,632,803 | 30,622,564|    -    |   directed  |  [Raw](http://snap.stanford.edu/data/soc-Pokec.html)  [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)        |
|LiveJournal  | 4,847,571 | 68,475,391 |  -    |  directed  |  [Raw](http://snap.stanford.edu/data/soc-LiveJournal1.html) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)         |
|IT-2004  | 41,291,594  | 1,135,718,909  |   -      |  directed  |  [Raw](http://law.di.unimi.it/webdata/it-2004/) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)|
|Twitter  | 41,652,230  | 1,468,365,182|    -    | directed    | [Raw](http://law.di.unimi.it/webdata/twitter-2010/) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)|
|Friendster-small | 7,944,949  | 447,219,610 |  100  |  undirected  | [Raw](https://snap.stanford.edu/data/com-Friendster.html) [Raw](https://graphvite.io/docs/latest/api/dataset.html) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
|Friendster | 65,608,366  | 1,806,067,135 |   100  |  undirected  | [Raw](https://snap.stanford.edu/data/com-Friendster.html) [Raw](https://graphvite.io/docs/latest/api/dataset.html) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
|OAG | 67,768,244  | 895,368,962 |   19  |  undirected  | [Raw](https://github.com/xptree/LightNE) [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing) |
|UK-2007 | 105,896,555 | 3,738,733,648|    -    |   directed  |  [Raw](http://law.di.unimi.it/webdata/uk-2007-05/)[Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)       |
|UK-union | 133,633,040 | 5,475,109,924|    -    |   directed  |  [Raw](http://law.di.unimi.it/webdata/uk-union-2006-06-2007-05/)  [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)        |
|ClueWeb12| 978,408,098 | 42,574,107,469 | - | directed | [Raw](http://law.di.unimi.it/webdata/clueweb12/) |
|ClueWeb09| 1,684,868,322| 7,939,635,651|    -    |  directed  |   [Raw](http://www.lemurproject.org/clueweb09.php/)    [Preprocessed](https://drive.google.com/drive/folders/14kUsAk46ZHD0l1amZBoWm4duUf2IwYwC?usp=sharing)     |

</div>

<details class="dataset-citation" markdown="1">
<summary><i class="fas fa-quote-right" aria-hidden="true"></i> Citation details for plain graph datasets</summary>

Welcome to cite our paper if you publish results based on our preprocessed datasets.
```bib
@article{yang13homogeneous,
  title={Homogeneous Network Embedding for Massive Graphs via Reweighted Personalized PageRank},
  author={Yang, Renchi and Shi, Jieming and Xiao, Xiaokui and Yang, Yin and Bhowmick, Sourav S},
  journal={Proceedings of the VLDB Endowment},
  volume={13},
  number={5},
  pages={670--683},
  year={2020},
  publisher={VLDB Endowment}
}

@article{shi13realtime,
  title={Realtime Index-Free Single Source SimRank Processing on Web-Scale Graphs},
  author={Shi, Jieming and Jin, Tianyuan and Yang, Renchi and Xiao, Xiaokui and Yang, Yin},
  journal={Proceedings of the VLDB Endowment},
  volume={13},
  number={7},
  pages={966--980},
  year={2020},
  publisher={VLDB Endowment}
}
```

</details>

<h2 id="attributed-graphs"><i class="fas fa-stream" aria-hidden="true"></i> Attributed Graphs</h2>

<div class="dataset-table dataset-table--attributed" role="region" aria-label="Attributed graph datasets" tabindex="0" markdown="1">

| Name  | Type      | #nodes    | #edges | #attributes  | #labels | URL       |
|-------  |---------  |---------  |---------|-----------  |---------  |---------  |
|Wiki |directed|2405|17981|4973| 19| [Raw](https://github.com/thunlp/TADW/tree/master/wiki) [Preprocessed](https://drive.google.com/file/d/1EPhlbziZTQv19OsTrKrAJwsElbVPEbiV/view?usp=sharing)|
|Cora | directed|2708|5429|1433| 7| [Raw](https://linqs.soe.ucsc.edu/data) [Preprocessed](https://drive.google.com/file/d/1FyVnpdsTT-lhkVPotUW8OVeuCi1vi3Ey/view?usp=sharing)|
|Citeseer| directed|3312|4660|3703| 6| [Raw](https://linqs.soe.ucsc.edu/data) [Preprocessed](https://drive.google.com/file/d/1d3uQIpHiemWJPgLgTafi70RFYye7hoCp/view?usp=sharing)|
|Pubmed| directed|19717|44338|500| 3| [Raw](https://linqs.soe.ucsc.edu/data) [Preprocessed](https://drive.google.com/file/d/1DOK3FfslyJoGXUSCSrK5lzdyLfIwOz6k/view?usp=sharing)|
|BlogCatalog| undirected|5196|343486| 8189| 6| [Raw](https://github.com/mengzaiqiao/CAN/tree/master/data) [Preprocessed](https://drive.google.com/file/d/178PqGqh67RUYMMP6-SoRHDoIBh8ku5FS/view?usp=sharing)|
|PPI| undirected|56944|818716|50| 121| [Raw](http://snap.stanford.edu/graphsage/) [Preprocessed](https://drive.google.com/file/d/1dvwRpPT4gGtOcNP_Q-G1TKl9NezYhtez/view?usp=sharing)|
|Flickr| undirected|7575|479476|12047| 9| [Raw](https://github.com/mengzaiqiao/CAN/tree/master/data) [Preprocessed](https://drive.google.com/file/d/1tZp3EB20fAC27SYWwa-x66_8uGsuU62X/view?usp=sharing)|
|Facebook| undirected|4039|88234|1283| 193| [Raw](https://snap.stanford.edu/data/ego-Facebook.html) [Preprocessed](https://drive.google.com/file/d/12aJWAGCM4IvdGI2fiydDNyWzViEOLZH8/view?usp=sharing)|
|ArXiv| undirected| 169343 | 1157799 | 128 | 40 | [Raw](https://drive.google.com/drive/folders/1zycmmDES39zVlbVCYs88JTJ1Wm5FbfLz) [Preprocessed](https://drive.google.com/drive/folders/14h9JrgR1TAVZVXhhl5rZQVcfmyQTR5kL)|
|Reddit| undirected|  232,965 |  11,606,919 | 602 | 41 | [Raw](https://drive.google.com/drive/folders/1zycmmDES39zVlbVCYs88JTJ1Wm5FbfLz) [Preprocessed](https://drive.google.com/drive/folders/14h9JrgR1TAVZVXhhl5rZQVcfmyQTR5kL)|
|Yelp| undirected|  716847 | 6,977,410 | 300 | 100 | [Raw](https://drive.google.com/drive/folders/1zycmmDES39zVlbVCYs88JTJ1Wm5FbfLz) [Preprocessed](https://drive.google.com/drive/folders/14h9JrgR1TAVZVXhhl5rZQVcfmyQTR5kL)|
|Twitter| directed|81306|1768149|216839| 4065| [Raw](https://snap.stanford.edu/data/ego-Twitter.html) [Preprocessed](https://drive.google.com/file/d/1fUYggzZlDrt9JsLsSdRUHiEzQRW1kSA4/view?usp=sharing)|
|Amazon2M| undirected| 2449029 | 61859140 | 100 | 47 | [Raw](https://github.com/google-research/google-research/tree/master/cluster_gcn) [Raw](https://ogb.stanford.edu/docs/nodeprop/#ogbn-products) [Preprocessed](https://drive.google.com/drive/folders/14h9JrgR1TAVZVXhhl5rZQVcfmyQTR5kL)|
|Google+| directed|107614|13673453|15907| 468| [Raw](https://snap.stanford.edu/data/ego-Gplus.html) [Preprocessed](https://drive.google.com/drive/folders/14h9JrgR1TAVZVXhhl5rZQVcfmyQTR5kL)|
|TWeibo| directed| 2320895| 50655143| 1657| 8| [Raw](https://www.kaggle.com/c/kddcup2012-track1) [Preprocessed](https://drive.google.com/file/d/1-2xHDPFCsuBuFdQN_7GLleWa8R_t50qU/view?usp=sharing)|
|MAG| directed| 59249719| 978147253| 2000| 100| [Raw](http://ma-graph.org/rdf-dumps/) [Preprocessed](https://drive.google.com/file/d/1ggraUMrQgdUyA3DjSRzzqMv0jFkU65V5/view?usp=sharing)|
|MAG-SC| directed|10541560| 265219994 |2784240 | 8 | [Raw](https://figshare.com/articles/dataset/mag_scholar/12696653) [Preprocessed](https://drive.google.com/drive/folders/14h9JrgR1TAVZVXhhl5rZQVcfmyQTR5kL)|

</div>

Our datasets are also available in [Pytorch-Geometric](https://pytorch-geometric.readthedocs.io/en/latest/modules/datasets.html#torch_geometric.datasets.AttributedGraphDataset). Node attributes can be loaded as a sparse matrix using the following code
```python
from scipy import sparse
features = sparse.load_npz("attrs.npz")
```

<details class="dataset-citation" markdown="1">
<summary><i class="fas fa-quote-right" aria-hidden="true"></i> Citation details for attributed graph datasets</summary>

Welcome to cite our paper if you publish results based on our preprocessed datasets.
```bib
@article{yang2020scaling,
  title={Scaling Attributed Network Embedding to Massive Graphs},
  author={Yang, Renchi and Shi, Jieming and Xiao, Xiaokui and Yang, Yin and Liu, Juncheng and Bhowmick, Sourav S},
  journal={Proceedings of the VLDB Endowment},
  volume={14},
  number={1},
  pages={37--49},
  year={2021},
  publisher={VLDB Endowment}
}
```

</details>

<h2 id="bipartite-graphs"><i class="fas fa-link" aria-hidden="true"></i> Bipartite Graphs</h2>

<div class="dataset-table dataset-table--bipartite" role="region" aria-label="Bipartite graph datasets" tabindex="0" markdown="1">

| Name    |     \|U\|   |    \|V\|    |   \|E\|   | URL       |
|-------  |---------  |---------  |---------|---------  |
|  Avito  |  27736    |  16589    | 67029   |[Raw](https://www.kaggle.com/c/avito-context-ad-clicks/data)  [Preprocessed](https://drive.google.com/drive/folders/11fm6L0lBDPLUKA9CToL0zqxkwhst0rEE)|
|  AOL    |   4811647 |  1632788  | 10741954|[Raw](http://www.ccc.ipt.pt/~ricardo/experiments/AOL_DS.html)  [Preprocessed](https://drive.google.com/drive/folders/11fm6L0lBDPLUKA9CToL0zqxkwhst0rEE)|
|  DBLP   |  6001     |  1524     |  29257  |[Raw](https://github.com/clhchtcjj/BiNE/tree/master/data/dblp)  [Preprocessed](https://drive.google.com/drive/folders/11fm6L0lBDPLUKA9CToL0zqxkwhst0rEE)|
|  Movielens-1M  |   6040        |   3706        |  1000210 |[Raw](https://grouplens.org/datasets/movielens/)  [Preprocessed](https://drive.google.com/drive/folders/11fm6L0lBDPLUKA9CToL0zqxkwhst0rEE)|
|  KDDCup2012  |  255170  | 1848114  | 2766394 |[Raw](https://www.kaggle.com/c/kddcup2012-track2)  [Preprocessed](https://drive.google.com/drive/folders/11fm6L0lBDPLUKA9CToL0zqxkwhst0rEE)|
|  Last.fm     | 359349  |  160168  | 17559531 |[Raw](http://ocelma.net/MusicRecommendationDataset/lastfm-360K.html)  [Preprocessed](https://drive.google.com/drive/folders/11fm6L0lBDPLUKA9CToL0zqxkwhst0rEE)|
|  Amazon-games | 826767  |  50210 | 1324754 |[Raw](http://deepyeti.ucsd.edu/jianmo/amazon/)  [Preprocessed](https://drive.google.com/drive/folders/11fm6L0lBDPLUKA9CToL0zqxkwhst0rEE)|
|  DBLP    | 6,001  | 1,308 | 29,256  | [Raw](https://github.com/clhchtcjj/BiNE/tree/master/data/dblp) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
| Wikipedia     | 15,000  |  3,214 | 64,095  | [Raw](https://github.com/clhchtcjj/BiNE/tree/master/data/wiki) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
|   Pinterest   | 55,187  | 9,916  | 1,500,809  | [Raw](https://github.com/hexiangnan/neural_collaborative_filtering/tree/master/Data) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
|   Yelp   |  31,668 | 38,048  | 1,561,406  | [Raw](https://github.com/kuandeng/LightGCN/tree/master/Data/yelp2018) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
|  MovieLens-10M    |  69,878 | 10,677  |  10,000,054 | [Raw](https://grouplens.org/datasets/movielens/) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
|  Last.fm    | 359,349  | 160,168  | 17,559,530 | [Raw](http://ocelma.net/MusicRecommendationDataset/lastfm-360K.html) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
|   MIND   | 876,956  | 97,509  | 18,149,915  | [Raw](https://msnews.github.io/) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
|  Netflix    | 480,189  | 17,770  | 100,480,507  | [Raw](https://academictorrents.com/details/9b13183dc4d60676b773c9e2cd6de5e5542cee9a) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
|   Orkut   | 2,783,196  | 8,730,857  | 327,037,487  | [Raw](https://networkrepository.com/aff-orkut-user2groups.php) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |
|  MAG    | 10,541,560  | 2,784,240  |  1,095,315,106 | [Raw](https://figshare.com/articles/dataset/mag_scholar/12696653) [Preprocessed](https://drive.google.com/drive/folders/1-l3OuAoiR1rcbk10zVhNLgHVgY8M_hwu?usp=sharing) |

</div>

<details class="dataset-citation" markdown="1">
<summary><i class="fas fa-quote-right" aria-hidden="true"></i> Citation details for bipartite graph datasets</summary>

Welcome to cite our paper if you publish results based on our preprocessed datasets.
```bib
@inproceedings{yang2022efficient,
  title={Efficient and Effective Similarity Search over Bipartite Graphs},
  author={Yang, Renchi},
  booktitle={Proceedings of the ACM Web Conference 2022},
  pages={308--318},
  year={2022}
}

@inproceedings{yang2022scalable,
  title={Scalable and Effective Bipartite Network Embedding},
  author={Yang, Renchi and Shi, Jieming and Huang, Keke and Xiao, Xiaokui},
  booktitle={Proceedings of the 2022 International Conference on Management of Data},
  pages={1977--1991},
  year={2022}
}
```

</details>

<p class="dataset-topics">Other graph topics: Text-Attributed Graphs · Multi-Modal Graphs</p>

<h2 id="dataset-repositories"><i class="fas fa-book-open" aria-hidden="true"></i> Dataset Repositories</h2>

<div class="dataset-table dataset-table--repositories" role="region" aria-label="Dataset repositories" tabindex="0" markdown="1">

| Name                                                                                       | Type                                   | Collected by             |
|--------------------------------------------------------------------------------------------|----------------------------------------|--------------------------|
|[SNAP](http://snap.stanford.edu/data/index.html)                                            |Graphs & Networks                       | Stanford                 |
|[LAW](http://law.di.unimi.it/datasets.php)                                                  |Graphs & Networks                       | UNIMI                    |
|[BioSNAP](http://snap.stanford.edu/biodata/index.html)                                      |Biomedical Networks                     | Stanford                 |
|[KONECT](http://konect.cc/networks/)                                                        |Graphs & Networks                       | Jérôme Kunegis           |
|[Aminer](https://www.aminer.cn/data/)                                                       |Academic Networks                       | AMiner                   |
|[UCI Network Data Repository](https://networkdata.ics.uci.edu/)                             |Graphs & Networks                       | UCI Datalab               |
|[Network Repository](https://networkrepository.com)                                         |Graphs & Networks                       | -                         |
|[Open Academic Graph](https://www.microsoft.com/en-us/research/project/open-academic-graph/)|Academic Networks                       | Microsoft                |
|[Open Graph Benchmark](https://ogb.stanford.edu/)                                           |Graphs & Networks                       | Stanford                 |
|[TuDatasets](https://chrsmrrs.github.io/datasets/)                                          |Graphs & Networks                       | Christopher Morris, etc. |
|[StreamingGraphs](https://eecs.wsu.edu/~yyao/StreamingGraphs.html)                          |Streaming Graphs                        | Yibo Yao                 |
|[ARB](https://www.cs.cornell.edu/~arb/data/)                                                |Graphs & Networks                       | Austin R. Benson         |
|[SuiteSparse Matrix Collection](https://sparse.tamu.edu/)                                   |Matrix/Graphs                           | TAMU                     |
|[Web Data Commons](http://webdatacommons.org/)                                              |Hyperlink Graphs/Web Tables/RDFa        | University of Mannheim   |
|[Yahoo Webscope Datasets](https://webscope.sandbox.yahoo.com/#datasets)                     |Graphs/Ratings/Languages/Advertising    | Yahoo                    |
|[UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets.php)              |Multivariate/Text/Time-Series           | UCI                      |
|[Yelp Open Dataset](https://www.yelp.com/dataset)                                           |businesses/reviews/user data            | Yelp                     |
|[Recommender Systems Datasets](https://cseweb.ucsd.edu/~jmcauley/datasets.html)             |graphs/interactions/reviews/ratings     | UCSD                     |
|[MIcrosoft News Dataset](https://msnews.github.io/)                                         |user behavior logs                      | Microsoft                |
|[Search Query Logs](https://jeffhuang.com/search_query_logs/)                               |query logs                              | Jeff Huang               |
|[AOL DS](http://www.ccc.ipt.pt/~ricardo/experiments/AOL_DS.html)                            |query logs                              | Ricardo Campos           |
|[AWS](https://registry.opendata.aws/)                            |-                             | Amazon           |
|[Kaggle Datasets](https://www.kaggle.com/datasets)                            |-                             | Kaggle           |
|[OpenML](https://www.openml.org/search?type=data&sort=runs&status=active) | - | OpenML |
|[Datasets](https://courses.cs.washington.edu/courses/cse547/19sp/data.html) | - | - |
|[Netzschleuder](https://networks.skewed.de/) | - | - |

</div>
