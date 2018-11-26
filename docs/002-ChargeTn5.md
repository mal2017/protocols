# Charging Naked Tn5 with MEDS (Picelli) {-}

## Notes {-}

This procotol is adapted from Picelli, et al. 2014 [@Picelli2014].

Yield can be stored at -20C.

## Workflow {-}

<!--html_preserve--><div id="htmlwidget-130c1028ae35cedc7e74" style="width:672px;height:480px;" class="grViz html-widget"></div>
<script type="application/json" data-for="htmlwidget-130c1028ae35cedc7e74">{"x":{"diagram":"\ndigraph Transposome {\n  node [shape = oval]\n  \"Annealed MEDS\"; \"Naked Transposase\"; \"2X Dialysis Buffer\"\n  node [shape = record]\n  \"Mix Assembly Reaction\"\n  \"Incubate @ RT\"; \"Store @ -20C\"; \"Remove Unbound MEDS\"\n  \n  {\"Annealed MEDS\" \"2X Dialysis Buffer\" \"Naked Transposase\"} -> \"Mix Assembly Reaction\"\n  \"Mix Assembly Reaction\" -> \"Incubate @ RT\"\n  \"Incubate @ RT\" -> {\"Remove Unbound MEDS\" \"Store @ -20C\"}\n  \"Remove Unbound MEDS\" -> \"Store @ -20C\"\n\n}\n","config":{"engine":"dot","options":null}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## Reagents {-}

* HEPES
* KOH
* NaCl
* EDTA
* DTT
* Triton X-100
* Glycerol
* Pre-annealed MEDS
* Naked Transposase
* DNA-binding Columns or AMPure XP beads (Agencourt)

## Protocol {-}

1. Mix Pre-annealed MEDS Oligos with Tn5.


Table: (\#tab:unnamed-chunk-2)Tn5 Charging Reaction

Reagent                             Quantity  Unit   
---------------------------------  ---------  -------
100uM equimolar oligos A/B in TE       0.125  Volume 
100% Glycerol                          0.400  Volume 
2x Tn5 dialysis buffer                 0.120  Volume 
Tn5, A280=3.0 (1.85 mg/ml)             0.360  Volume 

2. Incubate 60 minutes at room temperature.

3. Charged Tn5 solution can be stored at -20. Unbound MEDS oligos should
be removed from the solution before use. This can be done with a DNA binding column 
([Zymo](https://www.zymoresearch.com/dna-clean-concentrator) recommended in original protocol) or Agencourt AMPure XP beads ([Beckman Coulter](https://www.beckmancoulter.com/wsrportal/wsrportal.portal?_nfpb=true&_windowLabel=UCM_RENDERER&_urlType=render&wlpUCM_RENDERER_path=%252Fwsr%252Fresearch-and-discovery%252Fproducts-and-services%252Fnucleic-acid-sample-preparation%252Fagencourt-ampure-xp-pcr-purification%252Findex.htm#2/10//0/25/1/0/asc/2/A63880///0/1//0/%2Fwsrportal%2Fwsr%2Fresearch-and-discovery%2Fproducts-and-services%2Fnucleic-acid-sample-preparation%2Fagencourt-ampure-xp-pcr-purification%2Findex.htm/)).

## Buffers {-}

### 2x Tn5 Dialysis Buffer {-}


Table: (\#tab:unnamed-chunk-3)2X Tn5 Dialysis Buffer

Reagent               Quantity  Unit     Final.Conc.   Stock 
-------------------  ---------  -------  ------------  ------
HEPES-KOH (pH 7.2)       1.000  \(mL\)   100\(m\)M     1M    
NaCl                   400.000  \(uL\)   200\(m\)M     5M    
EDTA                     4.000  \(uL\)   0.2\(m\)M     0.5M  
DTT                     20.000  \(uL\)   2\(m\)M       1M    
Triton X-100            20.000  \(uL\)   0.2%          100%  
Glycerol                 2.000  \(mL\)   20%           100%  
H20                      6.556  \(mL\)   -             -     
