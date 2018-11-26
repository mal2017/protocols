# Cell Line ChIP (Bradner Lab protocol) {-}

## Notes {-}

This protocol is adapted from the ChIP protocol used in the Bradner Lab. Works well with 10-25 million cells.
Unless otherwise noted keep all steps on ice. Work quickly and reduce handling of material as much as possible.
For example, never pipette mix when resuspension in a rotator at 4c would suffice.

When using a bioruptor, 0.5% SDS is usually optimal. 
Before starting, make buffered stocks of HEPES and Tris.

## Workflow {-}
<!--html_preserve--><div id="htmlwidget-52c383f63d6ed82cd1d9" style="width:10in;height:3.5in;" class="grViz html-widget"></div>
<script type="application/json" data-for="htmlwidget-52c383f63d6ed82cd1d9">{"x":{"diagram":"\ndigraph ChIP {\n  node [shape = oval]\n  \"Cultured Cells\";  \n  node [shape = record]\n  \"Fixation\"; \"Lysis\"; \"Sonication\"; \"IP\";\"Wash + Purification\"\n  \n  \"Cultured Cells\" -> \"Fixation\"\n  \"Fixation\" -> \"Lysis\"\n  \"Lysis\" -> \"Sonication\"\n  \"Sonication\" -> \"IP\"\n  \"IP\" -> \"Wash + Purification\"\n}\n","config":{"engine":"dot","options":null}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## Protocol {-}

1. Bead setup
    + Wash 100ul Protein G DynaBeads 3x5min in 1ml blocking buffer using magnetic rack and aspirating all buffer with each wash.
    + Add 500ul blocking buffer to tub with trapped beads
    + Add antibody (usually 10ug) to this buffer. Do not bother resuspending manually. Instead rotate end over end at 4c for minimum 5 hrs.
2. Fixation
    + Make 11% formaldehyde fixation solution fresh (see below).
    + Add volume of fixation solution equal to 1/10 of the culture volume.
    + Incubate at RT on rocker for 10-15 minutes (optimize for cell type and IP target).
    + Quench with volume of 2.5M glycine equal to 1/20 culture volume.
    + If adherent:
        + Rinse 2x with chilled PBS+PIC at 1X concentration.
        + Add small volume of PBS+PIC (dependent on dish size) and scrape with cell scrapers or alternatively bent 200ul pipette tip.
        + Transfer scraped cells to conical (50ml or 15ml).
    + Wash:
        + Spin at 4c @ 1350g for 5min.
        + Aspirate supernatant.
        + Resuspend in cold 1X PBS+PIC.
        + Repeat 2x.
    + Collect cells by spinning at 4c @ 1350g for 5min, aspirate supernatant.
    + Cells are now ready for lysis. Alternatively snap freeze by dunking conical into LN~2~ and immediately transfer to -80c.
3. Lysis
    + Resuspend pellet in 5ml chilled LB1+PIC and incubate 10 minutes @ 4c while rotating.
    + Pellet cells at 1350g for 5min @ 4c, aspirate supernatant.
    + Repeat the previous two steps using LB2+PIC.
    + Resuspend in appropriate volume SB+PIC with SDS at optimized percentage.
4. Sonication
    + Sonicate using parameters optimized for instrument and cell type.
    + Spin sonicated material at 20,000g for 10min at 4c to clarify.
    + Collect supernatant and transfer to a new tube. Discard pellet (debris).
    + Set aside ~50ul for use as input (non-IP control) and store at -20c.
    + Dilute remaining sonicated chromatin with SB+PIC such that %SDS < 0.1%, ideally targeting < 15ml total volume.
5. IP
    + Wash antibody-bead complex 3x5min in cold blocking buffer.
    + Resuspend in 500ul cold blocking buffer.
    + Gently add bead suspension to sonicated chromatin.
    + Rotate end over end at 4c overnight.
6. Bead Wash + Elution
    + Collect bead-antibody-chromatin on magnetic rack, aspirate SB + debris.
    + Wash end over end 5min at 4c in each of the following buffers. After each wash, collect beads with magnet, aspirate.
        * Twice in SB
        * High salt SB
        * LiCl wash buffer
        * TE+NaCl (add 10ul 5M NaCl for every 1ml TE)
    + Remove as much of final wash as possible while beads are trapped by the magnetic rack. 
    If necessary, spin at 4c at 960g for 3 minutes then return to magnetic rack and aspirate again.
    + Gently resuspend in 210ul EB. Pipette mix vigorously or vortex.
    + Elute chromatin by incubating at 65c for 15min. Vortex or pipette mix once every 5min.
    + Spin at 20,000g to pellet beads and/or trap with magnetic rack.
    + Transfer supernatant to fresh tube
    + If input chromatin was saved, add EB to input chromatin such that IP and input are in the same volume.
    + Reverse crosslinks overnight, ~16hrs at 65c.
6. Purification
    + Add 200ul TE to each tube.
    + Add RNAseA to a concentration of 0.2mg/ml to each tube (8ul if stock is 10mg/ml).
    + Mix gently then incubate at 37c for 2hrs.
    + Add 7ul 300mM CaCl in 10mM ph8 Tris-HCL.
    + Add proteinase K to a concentration of 0.2mg/ml (4ul if stock concentration is 20mg/ml).
    + Mix and incubate 30min at 55c.
    + Options:
        1. Proceed with phenol:chloroform:isoamyl extraction
        2. Use column based extraction (e.g. minelute).

## Buffers {-}

Buffers are shown as recipes for a reasonable volume and use stock solutions and/or reagents listed below.


Table: (\#tab:unnamed-chunk-2)50mL 11% Formaldehyde Fixation Buffer

Ingredient            Target.Conc   To.Add 
--------------------  ------------  -------
1M HEPES-KOH, pH7.5   50mM          2.5ml  
5M NaCl               100mM         1ml    
0.5M EDTA, pH 8       1mM           100ul  
0.5M EGTA, pH 8       0.5mM         50ul   
37% Formaldehyde      11%           14.9ml 
ddH~2~O               NA            31.5ml 


Table: (\#tab:unnamed-chunk-3)50mL Blocking Buffer

Ingredient   Target.Conc   To.Add 
-----------  ------------  -------
BSA          0.5%          50mg   
1X PBS       NA            50mL   


Table: (\#tab:unnamed-chunk-4)250 mL Lysis Buffer 1 (LB1)

Ingredient            Target.Conc   To.Add      
--------------------  ------------  ------------
1M HEPES-KOH, pH7.5   50mM          12.5mL      
5M NaCl               140mM         7mL         
0.5M EDTA, pH 8       1mM           0.5mL       
glycerol              10%           25mL        
IGEPAL CA-630         0.5%          1.25mL      
Triton X-100          0.25%         625uL       
PIC                   See product   See product 
ddH~2~O               NA            203mL       


Table: (\#tab:unnamed-chunk-5)250 mL Lysis Buffer 2 (LB2)

Ingredient         Target.Conc   To.Add      
-----------------  ------------  ------------
1M TRIS-HCL, pH8   10mM          2.5mL       
5M NaCl            200mM         10mL        
0.5M EDTA, pH 8    1mM           0.5mL       
0.5M EGTA, pH 8    0.5mM         0.25mL      
PIC                see product   see product 
ddH~2~O            NA            236.75mL    



Table: (\#tab:unnamed-chunk-6)250 mL Sonication Buffer (LB)

Ingredient            Target.Conc   To.Add          
--------------------  ------------  ----------------
1M HEPES-KOH, pH7.5   50mM          12.5mL          
5M NaCl               140mM         7mL             
0.5M EDTA, pH 8       1mM           0.5mL           
0.5M EGTA, pH 8       1mM           0.5mL           
Triton X-100          1%            2.5mL           
10% Na-Deoxycholate   0.1%          2.5mL           
10% SDS               optimize      optimize        
PIC                   see product   see product     
ddH~2~O               NA            vol up to 250mL 


Table: (\#tab:unnamed-chunk-7)250 mL Sonication Buffer High Salt (LBHS)

Ingredient            Target.Conc   To.Add          
--------------------  ------------  ----------------
1M HEPES-KOH, pH7.5   50mM          12.5mL          
5M NaCl               500mM         25mL            
0.5M EDTA, pH 8       1mM           0.5mL           
0.5M EGTA, pH 8       1mM           0.5mL           
Triton X-100          1%            2.5mL           
10% Na-Deoxycholate   0.1%          2.5mL           
10% SDS               0.1%          2.5mL           
PIC                   see product   see product     
ddH~2~O               NA            vol up to 250mL 


Table: (\#tab:unnamed-chunk-8)250 mL LiCl Wash Buffer (LWB)

Ingredient            Target.Conc   To.Add   
--------------------  ------------  ---------
1M Tris-HCL, pH8      20mM          5mL      
0.5M EDTA, pH 8       1mM           0.5mL    
5M LiCl               250mM         12.5mL   
IGEPAL CA-630         0.5%          1.25mL   
10% Na-deoxycholate   0.5%          12.5mL   
ddH~2~O               NA            218.25mL 


Table: (\#tab:unnamed-chunk-9)250 mL Elution Buffer (EB)

Ingredient         Target.Conc   To.Add  
-----------------  ------------  --------
1M Tris-HCL, pH8   50mM          12.5mL  
0.5M EDTA, pH 8    10mM          5mL     
10% SDS            1%            25mL    
ddH~2~O            NA            207.5mL 

## Stocks {-}


Table: (\#tab:unnamed-chunk-10)ChIP stock solutions

Stock                  Target.Vol   Target.Conc    Reagent.MW  solid     Adjustment 
---------------------  -----------  ------------  -----------  --------  -----------
1M HEPES-KOH, pH 7.5   200mL        1M                 238.30  47.66g    KOH        
5M NaCl                500mL        5M                  58.44  146.1g    -          
1M Tris-HCL, pH 8      200mL        1M                 121.14  24.228g   HCL        
5M LiCl                40mL         5M                  42.39  8.478g    -          
10% Na-Deoxycholate    200mL        10%                    NA  20g       -          
10% SDS                200mL        10%                    NA  20g       -          
1M (~10%) CaCl~2~      100mL        1M                 110.98  11.1g     -          
2.5M Glycine           400mL        2.5M                75.07  75.07g    -          

## Other Reagents + equipment {-}

* Bovine Serum Albumin
* Triton X-100
* 1X PBS
* 37% formaldehyde (with methanol)
* glycerol
* IGEPAL CA630
* Sonicator and associated attachments
* TPX tubes (if sonicating in BioRuptor)
* Cell scrapers (alternatively bend a sterile pipette tip to a 90~o~ angle)
* DynaBeads (usually protein G)
* Desired antibody
* TE Buffer
* Protease inhibitors (Roche tablets or HALT cocktail; add phosphatase inhibitors for phosphorylated marks such as pSer polII)
* Proteinase K
* RNAse A
* Magnetic Racks for 1.5ml eppendorf and optionally 15ml conical
* Heat block, incubator, or water bath
* Nuclease-free H~2~O
