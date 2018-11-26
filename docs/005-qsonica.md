# QSONICA Operation (ChIP-seq) {-}

## Notes {-}

This protocol explains operation of the Q800R3 with automated cooler
for chromatin shearing as part of a ChIP-seq protocol.


## Workflow {-}
<!--html_preserve--><div id="htmlwidget-4f70c990ea821ddae889" style="width:10in;height:3.5in;" class="grViz html-widget"></div>
<script type="application/json" data-for="htmlwidget-4f70c990ea821ddae889">{"x":{"diagram":"digraph Shearing {\n  node [shape = oval]\n  \"Cell Lysate\";  \n  node [shape = record]\n  \"Add water to chamber\"; \n  \"Place cup horn in chamber\"; \"Start Cooling\";\n  \"Connect in/out tubing to cooler\"; \"Set parameters\";\"Sonicate\";\n  \"Remove samples + Drain + Shut down cooler\";\n  \n  \"Cell Lysate\" -> \"Place tubes in cup horn attachment\"\n  \"Place tubes in cup horn attachment\" -> \"Place cup horn in chamber\"\n  \"Place cup horn in chamber\" -> \"Sonicate\"\n  \"Sonicate\" -> \"Remove samples + Drain + Shut down cooler\"\n\n  \"Connect in/out tubing to cooler\" -> \"Add water to chamber\"\n  \"Add water to chamber\" -> \"Start Cooling\"\n  \"Start Cooling\" -> \"Set parameters\"\n\n  \"Set parameters\" -> \"Sonicate\"\n\n  \n}","config":{"engine":"dot","options":null}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## Protocol {-}

1. Prep cell lysate early in the day. 
    * Lysate can sit at 4c in sonication buffer 
or several hours at least. Note that for QSONICA sonication 1% SDS is recommended.
    * Divide the lysate such that approximately 1e7 cell equivalents of lysate are in 300ul
    * Use 500ul thin wall tubes
1. Place tubes in bottom of sample clamp.
    * The clamp is composed of two 3d printed discs with holes for tubes around the disc as well 
as a threaded central hole.
    * Screw these discs together firmly but without flexing the 3d printed plastic.
1. Slot the clamp+tube complex into the cup horn attachment
    * This should just gently fit into the cup horn, no forcing necessary
1. Attach chiller tubes and fill with appropriate amount of H~2~O.
1. Place the cup horn attachment in the sonication chamber
    * Make sure that cup horn is seated flat and the the gears on the top of the cup horn and the sonication
    chamber are completely meshed
1. Set desired sonication strength and on/off timing
    * :15/:45 at 70% for 30 minutes of total sonication is a good starting point
1. Make sure that the chamber is closed and turn the machine on. 
    * You can now walk away from the machine until it is finished. This will take several hours depending on the parameters used.
1. Drain machine by attaching drainage hose and briefly running cooler pump.
