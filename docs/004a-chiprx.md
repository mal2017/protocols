# ChIP-rx {-}

## Notes {-}

This protocol is adapted from another Bradner Lab protocol and can be
used in conjunction with just about any other ChIP-seq protocol.

The exogenous spike-in can be any non-human cell that can reliably be aligned to another genome.
In practice this is usually drosophila or mouse. Just make sure that that the organism you choose
expresses a similar enough protein to your target that your ab can cross react (and of course double-check
that your ab is in fact supposed to cross react).

Exogenous cells should be spiked in at a constant rate across all samples - usually 5% to 20% of
your experimental cells is fine, but some protocols go higher.

## Workflow {-}
<!--html_preserve--><div id="htmlwidget-deaf3dd65d095e658262" style="width:10in;height:3.5in;" class="grViz html-widget"></div>
<script type="application/json" data-for="htmlwidget-deaf3dd65d095e658262">{"x":{"diagram":"\ndigraph ChIP_Rx {\n  node [shape = egg]\n  \"Lyse fixed cells of interest\";   \n  node [shape = record]\n  \"Lyse all fixed Rx cells in master mix for all samples\";\n  \"Add volume of master mix such that Rx cells/Human cells = ~5%-20%\"\n  \"Continue ChIP workflow\"\n  \n  \"Lyse fixed cells of interest\" -> \"Add volume of master mix such that Rx cells/Human cells = ~5%-20%\"\n  \"Lyse all fixed Rx cells in master mix for all samples\" -> \"Add volume of master mix such that Rx cells/Human cells = ~5%-20%\"\n  \"Add volume of master mix such that Rx cells/Human cells = ~5%-20%\" -> \"Continue ChIP workflow\"\n}","config":{"engine":"dot","options":null}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## Protocol {-}

1. Process accurately counted cells of interest through the initial lysis step of a ChIP protocol
1. Calculate the total number of Rx cells necessary and lyse together in a master mix
1. Distribute the appropriate volume of master mix to each sample lysate
1. Continue with ChIP as normal
