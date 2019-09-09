
# Peer Warm Up Social Context Reliability ---------------------------------

all.data = read.csv("ORCA_p4_PeerWarmUp_SocialContextCodes.csv", stringsAsFactors = FALSE)

options(scipen = 999)

all.data[all.data == 888] <- NA

#999 = child missing from view, 
#coded as 999 but recode as 0 as to not overinflate ICC's but to include for reliability.
all.data[all.data == 999] <- 0

table(all.data$Coders)

names(all.data)

#Coder categories for reliability check

#AO_BC = 1
#AO_CC = 2
#BC_CC = 3
#NB_AO = 4
#NB_BC = 5
#NB_SC = 6
#SC_AO = 7

all.data$P4_WarmUp_CoderCategory[all.data$Coders == "AO_BC"] <- 1
all.data$P4_WarmUp_CoderCategory[all.data$Coders == "AO_CC"] <- 2
all.data$P4_WarmUp_CoderCategory[all.data$Coders == "BC_CC"] <- 3
all.data$P4_WarmUp_CoderCategory[all.data$Coders == "NB_AO"] <- 4
all.data$P4_WarmUp_CoderCategory[all.data$Coders == "NB_BC"] <- 5
all.data$P4_WarmUp_CoderCategory[all.data$Coders == "NB_SC"] <- 6
all.data$P4_WarmUp_CoderCategory[all.data$Coders == "SC_AO"] <- 7



#Nichole Scores

all.data$Child_A_Afill_NB <- rowMeans(all.data[,11:16], na.rm=TRUE)
all.data$Child_A_Antag_NB <- rowMeans(all.data[,17:22], na.rm=TRUE)
all.data$Child_A_Eng_NB <- rowMeans(all.data[,23:28], na.rm=TRUE)
all.data$Child_A_JCE_NB <- rowMeans(all.data[,29:34], na.rm=TRUE)
all.data$Child_A_Contrib_NB <- rowMeans(all.data[,35:37], na.rm=TRUE)

all.data$Child_B_Afill_NB <- rowMeans(all.data[,173:178], na.rm=TRUE)
all.data$Child_B_Antag_NB <- rowMeans(all.data[,179:184], na.rm=TRUE)
all.data$Child_B_Eng_NB <- rowMeans(all.data[,185:190], na.rm=TRUE)
all.data$Child_B_JCE_NB <- rowMeans(all.data[,191:196], na.rm=TRUE)
all.data$Child_B_Contrib_NB <- rowMeans(all.data[,197:199], na.rm=TRUE)

#Sasha scores
all.data$Child_A_Afill_SC <- rowMeans(all.data[,38:43], na.rm=TRUE)
all.data$Child_A_Antag_SC <- rowMeans(all.data[,44:49], na.rm=TRUE)
all.data$Child_A_Eng_SC <- rowMeans(all.data[,50:55], na.rm=TRUE)
all.data$Child_A_JCE_SC <- rowMeans(all.data[,56:61], na.rm=TRUE)
all.data$Child_A_Contrib_SC <- rowMeans(all.data[,62:64], na.rm=TRUE)

all.data$Child_B_Afill_SC <- rowMeans(all.data[,200:205], na.rm=TRUE)
all.data$Child_B_Antag_SC <- rowMeans(all.data[,206:211], na.rm=TRUE)
all.data$Child_B_Eng_SC <- rowMeans(all.data[,212:217], na.rm=TRUE)
all.data$Child_B_JCE_SC <- rowMeans(all.data[,218:223], na.rm=TRUE)
all.data$Child_B_Contrib_SC <- rowMeans(all.data[,224:226], na.rm=TRUE)

#Alex scores

all.data$Child_A_Afill_AO <- rowMeans(all.data[,65:70], na.rm=TRUE)
all.data$Child_A_Antag_AO <- rowMeans(all.data[,71:76], na.rm=TRUE)
all.data$Child_A_Eng_AO <- rowMeans(all.data[,77:82], na.rm=TRUE)
all.data$Child_A_JCE_AO <- rowMeans(all.data[,83:88], na.rm=TRUE)
all.data$Child_A_Contrib_AO <- rowMeans(all.data[,89:91], na.rm=TRUE)

all.data$Child_B_Afill_AO <- rowMeans(all.data[,227:232], na.rm=TRUE)
all.data$Child_B_Antag_AO <- rowMeans(all.data[,233:238], na.rm=TRUE)
all.data$Child_B_Eng_AO <- rowMeans(all.data[,239:244], na.rm=TRUE)
all.data$Child_B_JCE_AO <- rowMeans(all.data[,245:250], na.rm=TRUE)
all.data$Child_B_Contrib_AO <- rowMeans(all.data[,251:253], na.rm=TRUE)

#Buket scores

all.data$Child_A_Afill_BC <- rowMeans(all.data[,92:97], na.rm=TRUE)
all.data$Child_A_Antag_BC <- rowMeans(all.data[,98:103], na.rm=TRUE)
all.data$Child_A_Eng_BC <- rowMeans(all.data[,104:109], na.rm=TRUE)
all.data$Child_A_JCE_BC <- rowMeans(all.data[,110:115], na.rm=TRUE)
all.data$Child_A_Contrib_BC <- rowMeans(all.data[,116:118], na.rm=TRUE)

all.data$Child_B_Afill_BC <- rowMeans(all.data[,254:259], na.rm=TRUE)
all.data$Child_B_Antag_BC <- rowMeans(all.data[,260:265], na.rm=TRUE)
all.data$Child_B_Eng_BC <- rowMeans(all.data[,266:271], na.rm=TRUE)
all.data$Child_B_JCE_BC <- rowMeans(all.data[,272:277], na.rm=TRUE)
all.data$Child_B_Contrib_BC <- rowMeans(all.data[,278:280], na.rm=TRUE)

#Cait scores

all.data$Child_A_Afill_CC <- rowMeans(all.data[,119:124], na.rm=TRUE)
all.data$Child_A_Antag_CC <- rowMeans(all.data[,125:130], na.rm=TRUE)
all.data$Child_A_Eng_CC <- rowMeans(all.data[,131:136], na.rm=TRUE)
all.data$Child_A_JCE_CC <- rowMeans(all.data[,137:142], na.rm=TRUE)
all.data$Child_A_Contrib_CC <- rowMeans(all.data[,143:145], na.rm=TRUE)

all.data$Child_B_Afill_CC <- rowMeans(all.data[,281:286], na.rm=TRUE)
all.data$Child_B_Antag_CC <- rowMeans(all.data[,287:292], na.rm=TRUE)
all.data$Child_B_Eng_CC <- rowMeans(all.data[,293:298], na.rm=TRUE)
all.data$Child_B_JCE_CC <- rowMeans(all.data[,299:304], na.rm=TRUE)
all.data$Child_B_Contrib_CC <- rowMeans(all.data[,305:307], na.rm=TRUE)

#data subsets for raters

#subset for pair 1
sc.df_AO_BC <- all.data[which(all.data$P4_WarmUp_CoderCategory == 1),]

#subset for pair 2
sc.df_AO_CC <- all.data[which(all.data$P4_WarmUp_CoderCategory == 2),]

#subset for pair 3
sc.df_BC_CC <- all.data[which(all.data$P4_WarmUp_CoderCategory == 3),]

#subset for pair 4
sc.df_NB_AO <- all.data[which(all.data$P4_WarmUp_CoderCategory == 4),]

#subset for pair 5
sc.df_NB_BC <- all.data[which(all.data$P4_WarmUp_CoderCategory == 5),]

#subset for pair 6
sc.df_NB_SC <- all.data[which(all.data$P4_WarmUp_CoderCategory == 6),]

#subset for pair 7
sc.df_SC_AO <- all.data[which(all.data$P4_WarmUp_CoderCategory == 7),]

#pair 1 variable subsets

sc.df_AO_BC_afill <- subset(sc.df_AO_BC, select = c("Child_A_Afill_AO", "Child_B_Afill_AO", 
                                                    "Child_A_Afill_BC", "Child_B_Afill_BC"))
sc.df_AO_BC_afill <- data.frame(Child_A_Afill_AO = c(sc.df_AO_BC_afill[,"Child_A_Afill_AO"], 
                                                     sc.df_AO_BC_afill[,"Child_B_Afill_AO"]),
                                Child_A_Afill_BC = c(sc.df_AO_BC_afill[,"Child_A_Afill_BC"], 
                                                     sc.df_AO_BC_afill[,"Child_B_Afill_BC"]))


sc.df_AO_BC_antag <- subset(sc.df_AO_BC, select = c("Child_A_Antag_AO", "Child_B_Antag_AO", 
                                                    "Child_A_Antag_BC", "Child_B_Antag_BC"))
sc.df_AO_BC_antag <- data.frame(Child_A_Antag_AO = c(sc.df_AO_BC_antag[,"Child_A_Antag_AO"], 
                                                     sc.df_AO_BC_antag[,"Child_B_Antag_AO"]),
                                Child_A_Antag_BC = c(sc.df_AO_BC_antag[,"Child_A_Antag_BC"], 
                                                     sc.df_AO_BC_antag[,"Child_B_Antag_BC"]))

sc.df_AO_BC_eng <- subset(sc.df_AO_BC, select = c("Child_A_Eng_AO", "Child_B_Eng_AO", 
                                                  "Child_A_Eng_BC", "Child_B_Eng_BC"))
sc.df_AO_BC_eng <- data.frame(Child_A_Eng_AO = c(sc.df_AO_BC_eng[,"Child_A_Eng_AO"], 
                                                 sc.df_AO_BC_eng[,"Child_B_Eng_AO"]),
                              Child_A_Eng_BC = c(sc.df_AO_BC_eng[,"Child_A_Eng_BC"], 
                                                 sc.df_AO_BC_eng[,"Child_B_Eng_BC"]))

sc.df_AO_BC_jce <- subset(sc.df_AO_BC, select = c("Child_A_JCE_AO", "Child_B_JCE_AO", 
                                                  "Child_A_JCE_BC", "Child_B_JCE_BC"))
sc.df_AO_BC_jce <- data.frame(Child_A_JCE_AO = c(sc.df_AO_BC_jce[,"Child_A_JCE_AO"], 
                                                 sc.df_AO_BC_jce[,"Child_B_JCE_AO"]),
                              Child_A_JCE_BC = c(sc.df_AO_BC_jce[,"Child_A_JCE_BC"], 
                                                 sc.df_AO_BC_jce[,"Child_B_JCE_BC"]))

sc.df_AO_BC_contrib <- subset(sc.df_AO_BC, select = c("Child_A_Contrib_AO", "Child_B_Contrib_AO", 
                                                      "Child_A_Contrib_BC", "Child_B_Contrib_BC"))
sc.df_AO_BC_contrib <- data.frame(Child_A_Contrib_AO = c(sc.df_AO_BC_contrib[,"Child_A_Contrib_AO"], 
                                                         sc.df_AO_BC_contrib[,"Child_B_Contrib_AO"]),
                                  Child_A_Contrib_BC = c(sc.df_AO_BC_contrib[,"Child_A_Contrib_BC"], 
                                                         sc.df_AO_BC_contrib[,"Child_B_Contrib_BC"]))



#pair 2 variable subsets

sc.df_AO_CC_afill <- subset(sc.df_AO_CC, select = c("Child_A_Afill_AO", "Child_B_Afill_AO", 
                                                    "Child_A_Afill_CC", "Child_B_Afill_CC"))
sc.df_AO_CC_afill <- data.frame(Child_A_Afill_AO = c(sc.df_AO_CC_afill[,"Child_A_Afill_AO"], 
                                                     sc.df_AO_CC_afill[,"Child_B_Afill_AO"]),
                                Child_A_Afill_CC = c(sc.df_AO_CC_afill[,"Child_A_Afill_CC"], 
                                                     sc.df_AO_CC_afill[,"Child_B_Afill_CC"]))


sc.df_AO_CC_antag <- subset(sc.df_AO_CC, select = c("Child_A_Antag_AO", "Child_B_Antag_AO", 
                                                    "Child_A_Antag_CC", "Child_B_Antag_CC"))
sc.df_AO_CC_antag <- data.frame(Child_A_Antag_AO = c(sc.df_AO_CC_antag[,"Child_A_Antag_AO"], 
                                                     sc.df_AO_CC_antag[,"Child_B_Antag_AO"]),
                                Child_A_Antag_CC = c(sc.df_AO_CC_antag[,"Child_A_Antag_CC"], 
                                                     sc.df_AO_CC_antag[,"Child_B_Antag_CC"]))

sc.df_AO_CC_eng <- subset(sc.df_AO_CC, select = c("Child_A_Eng_AO", "Child_B_Eng_AO", 
                                                  "Child_A_Eng_CC", "Child_B_Eng_CC"))
sc.df_AO_CC_eng <- data.frame(Child_A_Eng_AO = c(sc.df_AO_CC_eng[,"Child_A_Eng_AO"], 
                                                 sc.df_AO_CC_eng[,"Child_B_Eng_AO"]),
                              Child_A_Eng_CC = c(sc.df_AO_CC_eng[,"Child_A_Eng_CC"], 
                                                 sc.df_AO_CC_eng[,"Child_B_Eng_CC"]))

sc.df_AO_CC_jce <- subset(sc.df_AO_CC, select = c("Child_A_JCE_AO", "Child_B_JCE_AO", 
                                                  "Child_A_JCE_CC", "Child_B_JCE_CC"))
sc.df_AO_CC_jce <- data.frame(Child_A_JCE_AO = c(sc.df_AO_CC_jce[,"Child_A_JCE_AO"], 
                                                 sc.df_AO_CC_jce[,"Child_B_JCE_AO"]),
                              Child_A_JCE_CC = c(sc.df_AO_CC_jce[,"Child_A_JCE_CC"], 
                                                 sc.df_AO_CC_jce[,"Child_B_JCE_CC"]))

sc.df_AO_CC_contrib <- subset(sc.df_AO_CC, select = c("Child_A_Contrib_AO", "Child_B_Contrib_AO", 
                                                      "Child_A_Contrib_CC", "Child_B_Contrib_CC"))
sc.df_AO_CC_contrib <- data.frame(Child_A_Contrib_AO = c(sc.df_AO_CC_contrib[,"Child_A_Contrib_AO"], 
                                                         sc.df_AO_CC_contrib[,"Child_B_Contrib_AO"]),
                                  Child_A_Contrib_CC = c(sc.df_AO_CC_contrib[,"Child_A_Contrib_CC"], 
                                                         sc.df_AO_CC_contrib[,"Child_B_Contrib_CC"]))

#pair 3 variable subsets

sc.df_BC_CC_afill <- subset(sc.df_BC_CC, select = c("Child_A_Afill_BC", "Child_B_Afill_BC", 
                                                    "Child_A_Afill_CC", "Child_B_Afill_CC"))
sc.df_BC_CC_afill <- data.frame(Child_A_Afill_BC = c(sc.df_BC_CC_afill[,"Child_A_Afill_BC"], 
                                                     sc.df_BC_CC_afill[,"Child_B_Afill_BC"]),
                                Child_A_Afill_CC = c(sc.df_BC_CC_afill[,"Child_A_Afill_CC"], 
                                                     sc.df_BC_CC_afill[,"Child_B_Afill_CC"]))


sc.df_BC_CC_antag <- subset(sc.df_BC_CC, select = c("Child_A_Antag_BC", "Child_B_Antag_BC", 
                                                    "Child_A_Antag_CC", "Child_B_Antag_CC"))
sc.df_BC_CC_antag <- data.frame(Child_A_Antag_BC = c(sc.df_BC_CC_antag[,"Child_A_Antag_BC"], 
                                                     sc.df_BC_CC_antag[,"Child_B_Antag_BC"]),
                                Child_A_Antag_CC = c(sc.df_BC_CC_antag[,"Child_A_Antag_CC"], 
                                                     sc.df_BC_CC_antag[,"Child_B_Antag_CC"]))

sc.df_BC_CC_eng <- subset(sc.df_BC_CC, select = c("Child_A_Eng_BC", "Child_B_Eng_BC", 
                                                  "Child_A_Eng_CC", "Child_B_Eng_CC"))
sc.df_BC_CC_eng <- data.frame(Child_A_Eng_BC = c(sc.df_BC_CC_eng[,"Child_A_Eng_BC"], 
                                                 sc.df_BC_CC_eng[,"Child_B_Eng_BC"]),
                              Child_A_Eng_CC = c(sc.df_BC_CC_eng[,"Child_A_Eng_CC"], 
                                                 sc.df_BC_CC_eng[,"Child_B_Eng_CC"]))

sc.df_BC_CC_jce <- subset(sc.df_BC_CC, select = c("Child_A_JCE_BC", "Child_B_JCE_BC", 
                                                  "Child_A_JCE_CC", "Child_B_JCE_CC"))
sc.df_BC_CC_jce <- data.frame(Child_A_JCE_BC = c(sc.df_BC_CC_jce[,"Child_A_JCE_BC"], 
                                                 sc.df_BC_CC_jce[,"Child_B_JCE_BC"]),
                              Child_A_JCE_CC = c(sc.df_BC_CC_jce[,"Child_A_JCE_CC"], 
                                                 sc.df_BC_CC_jce[,"Child_B_JCE_CC"]))

sc.df_BC_CC_contrib <- subset(sc.df_BC_CC, select = c("Child_A_Contrib_BC", "Child_B_Contrib_BC", 
                                                      "Child_A_Contrib_CC", "Child_B_Contrib_CC"))
sc.df_BC_CC_contrib <- data.frame(Child_A_Contrib_BC = c(sc.df_BC_CC_contrib[,"Child_A_Contrib_BC"], 
                                                         sc.df_BC_CC_contrib[,"Child_B_Contrib_BC"]),
                                  Child_A_Contrib_CC = c(sc.df_BC_CC_contrib[,"Child_A_Contrib_CC"], 
                                                         sc.df_BC_CC_contrib[,"Child_B_Contrib_CC"]))

#pair 4 variable subsets

sc.df_NB_AO_afill <- subset(sc.df_NB_AO, select = c("Child_A_Afill_NB", "Child_B_Afill_NB", 
                                                    "Child_A_Afill_AO", "Child_B_Afill_AO"))
sc.df_NB_AO_afill <- data.frame(Child_A_Afill_NB = c(sc.df_NB_AO_afill[,"Child_A_Afill_NB"], 
                                                     sc.df_NB_AO_afill[,"Child_B_Afill_NB"]),
                                Child_A_Afill_AO = c(sc.df_NB_AO_afill[,"Child_A_Afill_AO"], 
                                                     sc.df_NB_AO_afill[,"Child_B_Afill_AO"]))


sc.df_NB_AO_antag <- subset(sc.df_NB_AO, select = c("Child_A_Antag_NB", "Child_B_Antag_NB", 
                                                    "Child_A_Antag_AO", "Child_B_Antag_AO"))
sc.df_NB_AO_antag <- data.frame(Child_A_Antag_NB = c(sc.df_NB_AO_antag[,"Child_A_Antag_NB"], 
                                                     sc.df_NB_AO_antag[,"Child_B_Antag_NB"]),
                                Child_A_Antag_AO = c(sc.df_NB_AO_antag[,"Child_A_Antag_AO"], 
                                                     sc.df_NB_AO_antag[,"Child_B_Antag_AO"]))

sc.df_NB_AO_eng <- subset(sc.df_NB_AO, select = c("Child_A_Eng_NB", "Child_B_Eng_NB", 
                                                  "Child_A_Eng_AO", "Child_B_Eng_AO"))
sc.df_NB_AO_eng <- data.frame(Child_A_Eng_NB = c(sc.df_NB_AO_eng[,"Child_A_Eng_NB"], 
                                                 sc.df_NB_AO_eng[,"Child_B_Eng_NB"]),
                              Child_A_Eng_AO = c(sc.df_NB_AO_eng[,"Child_A_Eng_AO"], 
                                                 sc.df_NB_AO_eng[,"Child_B_Eng_AO"]))



sc.df_NB_AO_jce <- subset(sc.df_NB_AO, select = c("Child_A_JCE_NB", "Child_B_JCE_NB", 
                                                  "Child_A_JCE_AO", "Child_B_JCE_AO"))
sc.df_NB_AO_jce <- data.frame(Child_A_JCE_NB = c(sc.df_NB_AO_jce[,"Child_A_JCE_NB"], 
                                                 sc.df_NB_AO_jce[,"Child_B_JCE_NB"]),
                              Child_A_JCE_AO = c(sc.df_NB_AO_jce[,"Child_A_JCE_AO"], 
                                                 sc.df_NB_AO_jce[,"Child_B_JCE_AO"]))

sc.df_NB_AO_contrib <- subset(sc.df_NB_AO, select = c("Child_A_Contrib_NB", "Child_B_Contrib_NB", 
                                                      "Child_A_Contrib_AO", "Child_B_Contrib_AO"))
sc.df_NB_AO_contrib <- data.frame(Child_A_Contrib_NB = c(sc.df_NB_AO_contrib[,"Child_A_Contrib_NB"], 
                                                         sc.df_NB_AO_contrib[,"Child_B_Contrib_NB"]),
                                  Child_A_Contrib_AO = c(sc.df_NB_AO_contrib[,"Child_A_Contrib_AO"], 
                                                         sc.df_NB_AO_contrib[,"Child_B_Contrib_AO"]))

#pair 5 variable subsets

sc.df_NB_BC_afill <- subset(sc.df_NB_BC, select = c("Child_A_Afill_NB", "Child_B_Afill_NB", 
                                                    "Child_A_Afill_BC", "Child_B_Afill_BC"))
sc.df_NB_BC_afill <- data.frame(Child_A_Afill_NB = c(sc.df_NB_BC_afill[,"Child_A_Afill_NB"], 
                                                     sc.df_NB_BC_afill[,"Child_B_Afill_NB"]),
                                Child_A_Afill_BC = c(sc.df_NB_BC_afill[,"Child_A_Afill_BC"], 
                                                     sc.df_NB_BC_afill[,"Child_B_Afill_BC"]))


sc.df_NB_BC_antag <- subset(sc.df_NB_BC, select = c("Child_A_Antag_NB", "Child_B_Antag_NB", 
                                                    "Child_A_Antag_BC", "Child_B_Antag_BC"))
c
Child_A_Antag_BC = c(sc.df_NB_BC_antag[,"Child_A_Antag_BC"], 
                     sc.df_NB_BC_antag[,"Child_B_Antag_BC"]))

sc.df_NB_BC_eng <- subset(sc.df_NB_BC, select = c("Child_A_Eng_NB", "Child_B_Eng_NB", 
                                                  "Child_A_Eng_BC", "Child_B_Eng_BC"))
sc.df_NB_BC_eng <- data.frame(Child_A_Eng_NB = c(sc.df_NB_BC_eng[,"Child_A_Eng_NB"], 
                                                 sc.df_NB_BC_eng[,"Child_B_Eng_NB"]),
                              Child_A_Eng_BC = c(sc.df_NB_BC_eng[,"Child_A_Eng_BC"], 
                                                 sc.df_NB_BC_eng[,"Child_B_Eng_BC"]))

sc.df_NB_BC_jce <- subset(sc.df_NB_BC, select = c("Child_A_JCE_NB", "Child_B_JCE_NB", 
                                                  "Child_A_JCE_BC", "Child_B_JCE_BC"))
sc.df_NB_BC_jce <- data.frame(Child_A_JCE_NB = c(sc.df_NB_BC_jce[,"Child_A_JCE_NB"], 
                                                 sc.df_NB_BC_jce[,"Child_B_JCE_NB"]),
                              Child_A_JCE_BC = c(sc.df_NB_BC_jce[,"Child_A_JCE_BC"], 
                                                 sc.df_NB_BC_jce[,"Child_B_JCE_BC"]))

sc.df_NB_BC_contrib <- subset(sc.df_NB_BC, select = c("Child_A_Contrib_NB", "Child_B_Contrib_NB", 
                                                      "Child_A_Contrib_BC", "Child_B_Contrib_BC"))
sc.df_NB_BC_contrib <- data.frame(Child_A_Contrib_NB = c(sc.df_NB_BC_contrib[,"Child_A_Contrib_NB"], 
                                                         sc.df_NB_BC_contrib[,"Child_B_Contrib_NB"]),
                                  Child_A_Contrib_BC = c(sc.df_NB_BC_contrib[,"Child_A_Contrib_BC"], 
                                                         sc.df_NB_BC_contrib[,"Child_B_Contrib_BC"]))

#pair 6 variable subsets

sc.df_NB_SC_afill <- subset(sc.df_NB_SC, select = c("Child_A_Afill_NB", "Child_B_Afill_NB", 
                                                    "Child_A_Afill_SC", "Child_B_Afill_SC"))
sc.df_NB_SC_afill <- data.frame(Child_A_Afill_NB = c(sc.df_NB_SC_afill[,"Child_A_Afill_NB"], 
                                                     sc.df_NB_SC_afill[,"Child_B_Afill_NB"]),
                                Child_A_Afill_SC = c(sc.df_NB_SC_afill[,"Child_A_Afill_SC"], 
                                                     sc.df_NB_SC_afill[,"Child_B_Afill_SC"]))


sc.df_NB_SC_antag <- subset(sc.df_NB_SC, select = c("Child_A_Antag_NB", "Child_B_Antag_NB", 
                                                    "Child_A_Antag_SC", "Child_B_Antag_SC"))
sc.df_NB_SC_antag <- data.frame(Child_A_Antag_NB = c(sc.df_NB_SC_antag[,"Child_A_Antag_NB"], 
                                                     sc.df_NB_SC_antag[,"Child_B_Antag_NB"]),
                                Child_A_Antag_SC = c(sc.df_NB_SC_antag[,"Child_A_Antag_SC"], 
                                                     sc.df_NB_SC_antag[,"Child_B_Antag_SC"]))

sc.df_NB_SC_eng <- subset(sc.df_NB_SC, select = c("Child_A_Eng_NB", "Child_B_Eng_NB", 
                                                  "Child_A_Eng_SC", "Child_B_Eng_SC"))
sc.df_NB_SC_eng <- data.frame(Child_A_Eng_NB = c(sc.df_NB_SC_eng[,"Child_A_Eng_NB"], 
                                                 sc.df_NB_SC_eng[,"Child_B_Eng_NB"]),
                              Child_A_Eng_SC = c(sc.df_NB_SC_eng[,"Child_A_Eng_SC"], 
                                                 sc.df_NB_SC_eng[,"Child_B_Eng_SC"]))

sc.df_NB_SC_jce <- subset(sc.df_NB_SC, select = c("Child_A_JCE_NB", "Child_B_JCE_NB", 
                                                  "Child_A_JCE_SC", "Child_B_JCE_SC"))
sc.df_NB_SC_jce <- data.frame(Child_A_JCE_NB = c(sc.df_NB_SC_jce[,"Child_A_JCE_NB"], 
                                                 sc.df_NB_SC_jce[,"Child_B_JCE_NB"]),
                              Child_A_JCE_SC = c(sc.df_NB_SC_jce[,"Child_A_JCE_SC"], 
                                                 sc.df_NB_SC_jce[,"Child_B_JCE_SC"]))

sc.df_NB_SC_contrib <- subset(sc.df_NB_SC, select = c("Child_A_Contrib_NB", "Child_B_Contrib_NB", 
                                                      "Child_A_Contrib_SC", "Child_B_Contrib_SC"))
sc.df_NB_SC_contrib <- data.frame(Child_A_Contrib_NB = c(sc.df_NB_SC_contrib[,"Child_A_Contrib_NB"], 
                                                         sc.df_NB_SC_contrib[,"Child_B_Contrib_NB"]),
                                  Child_A_Contrib_SC = c(sc.df_NB_SC_contrib[,"Child_A_Contrib_SC"], 
                                                         sc.df_NB_SC_contrib[,"Child_B_Contrib_SC"]))

#pair 7 variable subsets

sc.df_SC_AO_afill <- subset(sc.df_SC_AO, select = c("Child_A_Afill_SC", "Child_B_Afill_SC", 
                                                    "Child_A_Afill_AO", "Child_B_Afill_AO"))
sc.df_SC_AO_afill <- data.frame(Child_A_Afill_SC = c(sc.df_SC_AO_afill[,"Child_A_Afill_SC"], 
                                                     sc.df_SC_AO_afill[,"Child_B_Afill_SC"]),
                                Child_A_Afill_AO = c(sc.df_SC_AO_afill[,"Child_A_Afill_AO"], 
                                                     sc.df_SC_AO_afill[,"Child_B_Afill_AO"]))


sc.df_SC_AO_antag <- subset(sc.df_SC_AO, select = c("Child_A_Antag_SC", "Child_B_Antag_SC", 
                                                    "Child_A_Antag_AO", "Child_B_Antag_AO"))
sc.df_SC_AO_antag <- data.frame(Child_A_Antag_SC = c(sc.df_SC_AO_antag[,"Child_A_Antag_SC"], 
                                                     sc.df_SC_AO_antag[,"Child_B_Antag_SC"]),
                                Child_A_Antag_AO = c(sc.df_SC_AO_antag[,"Child_A_Antag_AO"], 
                                                     sc.df_SC_AO_antag[,"Child_B_Antag_AO"]))

sc.df_SC_AO_eng <- subset(sc.df_SC_AO, select = c("Child_A_Eng_SC", "Child_B_Eng_SC", 
                                                  "Child_A_Eng_AO", "Child_B_Eng_AO"))
sc.df_SC_AO_eng <- data.frame(Child_A_Eng_SC = c(sc.df_SC_AO_eng[,"Child_A_Eng_SC"], 
                                                 sc.df_SC_AO_eng[,"Child_B_Eng_SC"]),
                              Child_A_Eng_AO = c(sc.df_SC_AO_eng[,"Child_A_Eng_AO"], 
                                                 sc.df_SC_AO_eng[,"Child_B_Eng_AO"]))

sc.df_SC_AO_jce <- subset(sc.df_SC_AO, select = c("Child_A_JCE_SC", "Child_B_JCE_SC", 
                                                  "Child_A_JCE_AO", "Child_B_JCE_AO"))
sc.df_SC_AO_jce <- data.frame(Child_A_JCE_SC = c(sc.df_SC_AO_jce[,"Child_A_JCE_SC"], 
                                                 sc.df_SC_AO_jce[,"Child_B_JCE_SC"]),
                              Child_A_JCE_AO = c(sc.df_SC_AO_jce[,"Child_A_JCE_AO"], 
                                                 sc.df_SC_AO_jce[,"Child_B_JCE_AO"]))

sc.df_SC_AO_contrib <- subset(sc.df_SC_AO, select = c("Child_A_Contrib_SC", "Child_B_Contrib_SC", 
                                                      "Child_A_Contrib_AO", "Child_B_Contrib_AO"))
sc.df_SC_AO_contrib <- data.frame(Child_A_Contrib_SC = c(sc.df_SC_AO_contrib[,"Child_A_Contrib_SC"], 
                                                         sc.df_SC_AO_contrib[,"Child_B_Contrib_SC"]),
                                  Child_A_Contrib_AO = c(sc.df_SC_AO_contrib[,"Child_A_Contrib_AO"], 
                                                         sc.df_SC_AO_contrib[,"Child_B_Contrib_AO"]))

#ICC reliabilities for all pairs all variables
library(irr)

#Pair 1
icc(sc.df_AO_BC_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_BC_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_BC_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_BC_jce, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_BC_contrib, model="twoway", type="consistency", unit = "average")

#Pair 2
icc(sc.df_AO_CC_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_CC_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_CC_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_CC_jce, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_CC_contrib, model="twoway", type="consistency", unit = "average")

#Pair 3
icc(sc.df_BC_CC_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_BC_CC_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_BC_CC_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_BC_CC_jce, model="twoway", type="consistency", unit = "average")
icc(sc.df_BC_CC_contrib, model="twoway", type="consistency", unit = "average")

#Pair 4
icc(sc.df_NB_AO_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_AO_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_AO_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_AO_jce, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_AO_contrib, model="twoway", type="consistency", unit = "average")


#Pair 5
icc(sc.df_NB_BC_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BC_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BC_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BC_jce, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BC_contrib, model="twoway", type="consistency", unit = "average")

#Pair 6
icc(sc.df_NB_SC_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_SC_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_SC_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_SC_jce, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_SC_contrib, model="twoway", type="consistency", unit = "average")

#Pair 7
icc(sc.df_SC_AO_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_SC_AO_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_SC_AO_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_SC_AO_jce, model="twoway", type="consistency", unit = "average")
icc(sc.df_SC_AO_contrib, model="twoway", type="consistency", unit = "average")


# Cooperative Ability Reliability -----------------------------------------

ability.data <- read.csv("P4RobotReliabilites.csv", stringsAsFactors = FALSE)

#Recode child category as numeric
ability.data$Participant_JW[ability.data$Participant_JW == "Child A"] <- 1
ability.data$Participant_JW[ability.data$Participant_JW == "Child B"] <- 2
ability.data$Participant_YZ[ability.data$Participant_YZ == "Child A"] <- 1
ability.data$Participant_YZ[ability.data$Participant_YZ == "Child B"] <- 2

#Recode handle category as numeric
ability.data$Handle_JW[ability.data$Handle_JW == "CompleteDown_Blue"] <- 1
ability.data$Handle_JW[ability.data$Handle_JW == "CompleteDown_Green"] <- 2
ability.data$Handle_YZ[ability.data$Handle_YZ == "CompleteDown_Blue"] <- 1
ability.data$Handle_YZ[ability.data$Handle_YZ == "CompleteDown_Green"] <- 2


#Kappas 
library(lpSolve)
library(irr)

#Kappa for participant
kappa2(ability.data[,c(4,8)], "unweighted")

#Kappa for handle
kappa2(ability.data[,c(5,9)], "unweighted")

#Percent Agreement
##NOTE - Data converted into # of frames based on 25fps in Excel

library(irr)
library(lpSolve)
#datasubset
Onset <- subset(ability.data, select = c("Onset_Time_JW", "Onset_Time_YZ"))
Offset <- subset(ability.data, select = c("Offset_Time_JW", "Offset_Time_YZ"))

#Percent Agreement for Onset and offset
agree(Onset, tolerance = 8)
agree(Offset, tolerance = 8)

#Percent agreement total

total.time <- data.frame(Onset, Offset)

total.time <- data.frame(total.time_YZ = c(total.time[,"Onset_Time_YZ"], 
                                           total.time[,"Offset_Time_YZ"]),
                         total.time_JW = c(total.time[,"Onset_Time_JW"],
                                           total.time[,"Offset_Time_JW"]))

agree(total.time, tolerance = 8)

icc(total.time, model="twoway", type="agreement")







