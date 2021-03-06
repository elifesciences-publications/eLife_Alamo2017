## Define IHM regions

defineIHM <- function(colPriming="green",
                      colAnchoring="orange",
                      colStabilising="magenta",
                      colScaffolding="yellow"){
  rbind(
    #tail regions
    data.frame(aaPos=915:931,
               interaction="a",
               state="tail",
               label="S2 ring 2"),
    data.frame(aaPos=889:913,
               interaction="f1",
               state="tail",
               label="S2 ring 1 (BH)"),
    data.frame(aaPos=889:913,
               interaction="f2",
               state="tail",
               label="S2 ring 1 (FH)"),
    data.frame(aaPos=858:884,
               interaction="g",
               state="tail",
               label="S2 (FH)"),
    
    #free head regions
    data.frame(aaPos=622:646,
               interaction="a",
               state="fh",
               label="loop 2"),
    data.frame(aaPos=c(168:171),
               interaction="d1",
               state="fh",
               label="near P-loop"),
    data.frame(aaPos=c(442:454),
               interaction="d1",
               state="fh",
               label="near switch II"),
    data.frame(aaPos=c(716:723,732:741,759:766),
               interaction="d2",
               state="fh",
               label="converter domain"),
    data.frame(aaPos=483:515,
               interaction="d2",
               state="fh",
               label="relay domain"),
    data.frame(aaPos=777:808,
               interaction="elc-mhc",
               state="fh",
               label="ELC interface"),
    data.frame(aaPos=800:846,
               interaction="rlc-mhc",
               state="fh",
               label="RLC interface"),
    # data.frame(aaPos=138:149,
    #            interaction="e",
    #            state="fh",
    #            label="ELC"),
    
    #blocked head regions
    data.frame(aaPos=401:416,
               interaction="d1",
               state="bh",
               label="CM loop"),
    data.frame(aaPos=365:383,
               interaction="d2",
               state="bh",
               label="C loop (loop 4)"),
    data.frame(aaPos=295:305,
               interaction="d2",
               state="bh",
               label="near I loop"),
    data.frame(aaPos=606:624,
               interaction="e",
               state="bh",
               label="near loop 2"),
    data.frame(aaPos=386:394,
               interaction="e",
               state="bh",
               label="near C loop"),
    data.frame(aaPos=622:646,
               interaction="f1",
               state="bh",
               label="loop 2"),
    data.frame(aaPos=524:538,
               interaction="f2",
               state="bh",
               label="actin interface II"),
    data.frame(aaPos=651:663,
               interaction="f2",
               state="bh",
               label="near loop 2"),
    # data.frame(aaPos=175:180,
    #            interaction="g",
    #            state="bh",
    #            label="ELC"),
    data.frame(aaPos=447:454,
               interaction="g",
               state="bh",
               label="near ATP binding, SWII"),
    data.frame(aaPos=1:79,
               interaction="h",
               state="bh",
               label="SH3"),
    data.frame(aaPos=716:723,
               interaction="i",
               state="bh",
               label="converter"),
    # data.frame(aaPos=c(121:155,180:190),
    #            interaction="i",
    #            state="bh",
    #            label="ELC"),
    data.frame(aaPos=483:516,
               interaction="j",
               state="bh",
               label="relay"),
    data.frame(aaPos=728:762,
               interaction="j",
               state="bh",
               label="converter"),
    data.frame(aaPos=803:846,
               interaction="rlc-mhc",
               state="bh",
               label="RLC interface"),
    data.frame(aaPos=c(716:762,774:799,804:815),
               interaction="elc-mhc",
               state="bh",
               label="ELC interface")
  ) %>%
    left_join(
      rbind(
        data.frame(interaction=c("f1","f2","g"),type="priming",colour=colPriming),
        data.frame(interaction=c("h","i","j"),type="anchoring",colour=colAnchoring),
        data.frame(interaction=c("a","d1","d2","e"),type="stabilising",colour=colStabilising),
        data.frame(interaction=c("elc-mhc","rlc-mhc"),type="scaffolding",colour=colScaffolding)
      ) 
      ) %>%
    mutate(type=factor(type,levels=c("priming","anchoring","stabilising","scaffolding"))) %>%
    arrange(type) %>%
        return
}