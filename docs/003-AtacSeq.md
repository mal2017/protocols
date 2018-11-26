# ATAC-seq {-}

## Notes {-}

## Workflow {-}

## Reagents {-}

* Illumina Nextera DNA Preparation kit (Illumina Cat #FC-121-1030) (stored at -20 deg C)
* 1X PBS
* Lysis buffer (10 mM Tris-HCl pH 7.4, 10 mM NaCl, 3 mM MgCl2, 0.1% IGEPAL CA-360)*
* Nuclease-free water
* Customized Nextera PCR primers (see table)
* SYBR Green I dye (Invitrogen #S-7563)
* NEBNext High-Fidelity 2X PCR master mix (NEB Cat #M0541)
* Qiagen MinElute DNA purification kit
* Qiagen DNA purification kit
* Materials for TapeStation/BioAnalyzer/Qubit/KAPA kit for libary QC and quantification

## Protocol {-}

1. Harvest cells.
2. Spin 50,000 cells at 500G for 5 minutes at 4C.
3. Gently resuspend in cold 1X PBS to wash.
4. Spin 50,000 cells at 500G for 5 minutes at 4C.
5. Remove PBS and resuspend in 50 uL cold ATAC Lysis Buffer.
 
## Buffers {-}

### Lysis Buffer {-}


```r
Reagent <- c("TRIS-HCL ph 7.4", "NaCl", "MgCl2", "IGEPAL", "H20")

Quantity <- c(8.33,5,0.75,0.25,235.67)

# https://stats.idre.ucla.edu/r/codefragments/greek_letters/

Unit <- c("\\(mL\\)","\\(mL\\)","\\(mL\\)","\\(mL\\)","\\(mL\\)")

Final <- c(paste0(10,"\\(m\\)","M"),
           paste0(10,"\\(m\\)","M"),
           paste0(3,"\\(m\\)","M"),
           paste0(0.1,"%"),
           "-")


Stock <- c("300mM", "500mM", "1M","100%","-")

LysisBuffer <- data.frame(Reagent=Reagent,
                            Quantity=Quantity,
                            Unit=Unit,
                            "Final Conc."=Final,
                            Stock=Stock)
knitr::kable(LysisBuffer, caption = 'ATAC Lysis Buffer',
             format = 'pandoc')
```



Table: (\#tab:unnamed-chunk-1)ATAC Lysis Buffer

Reagent            Quantity  Unit     Final.Conc.   Stock 
----------------  ---------  -------  ------------  ------
TRIS-HCL ph 7.4        8.33  \(mL\)   10\(m\)M      300mM 
NaCl                   5.00  \(mL\)   10\(m\)M      500mM 
MgCl2                  0.75  \(mL\)   3\(m\)M       1M    
IGEPAL                 0.25  \(mL\)   0.1%          100%  
H20                  235.67  \(mL\)   -             -     
