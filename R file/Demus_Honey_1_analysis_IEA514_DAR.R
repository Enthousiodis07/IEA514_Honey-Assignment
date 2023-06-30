#########################
# Author: Demus Matheus Huang
# Course: IEA514 - Applied Environmental Forensics
# Assignment: Data Analysis Report
# Date created: 2023-06-19
#########################


#### Preparation ####
# Open the acquired dataset with .csv in Ms. Excel, modify table columns and structure

# Import the data
df0 <- read.csv('data/honey_1.csv')

# Looking at the data
head(df0)
dim(df0)
summary(df0)
View(df0)

# Sorting the data based on 'Floral' column
df0 <- df0[order(df0$Floral), ] # primary data
View(df0)

# Deletion of unnecessary columns and change of 'Floral' column name
df <- df0[,-c(1, 3:7)] # floral data
colnames(df)[1] = "Sample"
View(df)


#### Exploratory plots ####
# Names for the x labels
samples <- c(rep('Clover',9), rep('Honeydew', 6), rep('Kamahi', 4), 
             rep('Manufacturing', 3), rep('Manuka', 15), rep('Polyfloral', 3))

# Change the column sample from being a character to a factor

df$Sample <- as.factor(df$Sample)



#### Li ####
# Bar plot
jpeg('figs/barplot_Li.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Li, xaxt = 'n', cex.axis = 0.4, 
     xlab = 'Floral', 
     ylab = 'Li [unknown]',
     col = as.factor(df$Sample),
     width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Li.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Li, xlab = 'Floral', ylab = '', cex.axis = 0.4) # no need ylab as it is redundant
dev.off()



#### B ####
# Bar plot
jpeg('figs/barplot_B.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$B, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'B [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plots
jpeg('figs/boxplot_B.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$B, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Na ####
# Bar plot
jpeg('figs/barplot_Na.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Na, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Floral', 
        ylab = 'Na [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Na.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5))
plot(df$Sample, df$Na, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Mg ####
# Bar plot
jpeg('figs/barplot_Mg.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Mg, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Mg [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                       'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Mg.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Mg, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Al ####
# Bar plot
jpeg('figs/barplot_Al.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Al, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Al [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Al.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Al, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### K ####
# Bar plot
jpeg('figs/barplot_K.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$K, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'K [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_K.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$K, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Ca ####
# Bar plot
jpeg('figs/barplot_Ca.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ca, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Ca [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Ca.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Ca, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### V ####
# Bar plot
jpeg('figs/barplot_V.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$V, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'V [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_V.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$V, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Cr ####
# Bar plot
jpeg('figs/barplot_Cr.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Cr, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Cr [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Cr.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Cr, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Mn ####
# Bar plot
jpeg('figs/barplot_Mn.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Mn, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Mn [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Mn.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Mn, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Fe ####
# Bar plot
jpeg('figs/barplot_Fe.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Fe, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Fe [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Fe.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Fe, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Co ####
# Bar plot
jpeg('figs/barplot_Co.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Co, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Co [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Co.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Co, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Ni ####
# Bar plot
jpeg('figs/barplot_Ni.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ni, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Ni [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Ni.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Ni, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Cu ####
# Bar plot
jpeg('figs/barplot_Cu.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Cu, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Cu [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Cu.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Cu, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Zn ####
# Bar plot
jpeg('figs/barplot_Zn.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Zn, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Zn [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Zn.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Zn, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Ga ####
# Bar plot
jpeg('figs/barplot_Ga.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ga, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Ga [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Ga.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Ga, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Rb ####
# Bar plot
jpeg('figs/barplot_Rb.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Rb, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Rb [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Rb.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Rb, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Sr ####
# Bar plot
jpeg('figs/barplot_Sr.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Sr, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Sr [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Sr.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Sr, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Ag ####
# Bar plot
jpeg('figs/barplot_Ag.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ag, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Ag [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Ag.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Ag, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Cs ####
# Bar plot
jpeg('figs/barplot_Cs.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Cs, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Cs [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Cs.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Cs, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()



#### Ba ####
# Bar plot
jpeg('figs/barplot_Ba.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ba, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Ba [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Ba.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Ba, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()


#### La ####
# Bar plot
jpeg('figs/barplot_La.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$La, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'La [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_La.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$La, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()


#### Ce ####
# Bar plot
jpeg('figs/barplot_Ce.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ce, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Ce [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Ce.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Ce, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()


#### Pb ####
# Bar plot
jpeg('figs/barplot_Pb.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Pb, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Pb [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Pb.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Pb, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()


#### Rb.Sr ####
# Bar plot
jpeg('figs/barplot_Rb.Sr.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Rb.Sr, xaxt = 'n', cex.axis = 0.4,
        xlab = 'Floral', 
        ylab = 'Rb.Sr [unknown]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                    'Polyfloral'), pch = c(15,15,15,15,15,15),
       col = c('black','red','green','blue','turquoise','magenta'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Rb.Sr.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Rb.Sr, xlab = 'Floral', ylab = '', cex.axis = 0.4) 
dev.off()


#### ANOVA ####
#### ANOVA for Li ####
df_aov_Li <- df[,c(1,2)]
result_Li <- aov(Li ~ Sample, data = df_aov_Li)
summary(result_Li)

#### ANOVA for B ####
df_aov_B <- df[,c(1,3)]
result_B <- aov(B ~ Sample, data = df_aov_B)
summary(result_B)

#### ANOVA for Na ####
df_aov_Na <- df[,c(1,4)]
result_Na <- aov(Na ~ Sample, data = df_aov_Na)
summary(result_Na)

#### ANOVA for Mg ####
df_aov_Mg <- df[,c(1,5)]
result_Mg <- aov(Mg ~ Sample, data = df_aov_Mg)
summary(result_Mg)

#### ANOVA for Al ####
df_aov_Al <- df[,c(1,6)]
result_Al <- aov(Al ~ Sample, data = df_aov_Al)
summary(result_Al)

#### ANOVA for K ####
df_aov_K <- df[,c(1,7)]
result_K <- aov(K ~ Sample, data = df_aov_K)
summary(result_K)

#### ANOVA for Ca ####
df_aov_Ca <- df[,c(1,8)]
result_Ca <- aov(Ca ~ Sample, data = df_aov_Ca)
summary(result_Ca)

#### ANOVA for V ####
df_aov_V <- df[,c(1,9)]
result_V <- aov(V ~ Sample, data = df_aov_V)
summary(result_V)

#### ANOVA for Cr ####
df_aov_Cr <- df[,c(1,10)]
result_Cr <- aov(Cr ~ Sample, data = df_aov_Cr)
summary(result_Cr)

#### ANOVA for Mn ####
df_aov_Mn <- df[,c(1,11)]
result_Mn <- aov(Mn ~ Sample, data = df_aov_Mn)
summary(result_Mn)

#### ANOVA for Fe ####
df_aov_Fe <- df[,c(1,12)]
result_Fe <- aov(Fe ~ Sample, data = df_aov_Fe)
summary(result_Fe)

#### ANOVA for Co ####
df_aov_Co <- df[,c(1,13)]
result_Co <- aov(Co ~ Sample, data = df_aov_Co)
summary(result_Co)

#### ANOVA for Ni ####
df_aov_Ni <- df[,c(1,14)]
result_Ni <- aov(Ni ~ Sample, data = df_aov_Ni)
summary(result_Ni)

#### ANOVA for Cu ####
df_aov_Cu <- df[,c(1,15)]
result_Cu <- aov(Cu ~ Sample, data = df_aov_Cu)
summary(result_Cu)

#### ANOVA for Zn ####
df_aov_Zn <- df[,c(1,16)]
result_Zn <- aov(Zn ~ Sample, data = df_aov_Zn)
summary(result_Zn)

#### ANOVA for Ga ####
df_aov_Ga <- df[,c(1,17)]
result_Ga <- aov(Ga ~ Sample, data = df_aov_Ga)
summary(result_Ga)

#### ANOVA for Rb ####
df_aov_Rb <- df[,c(1,18)]
result_Rb <- aov(Rb ~ Sample, data = df_aov_Rb)
summary(result_Rb)

#### ANOVA for Sr ####
df_aov_Sr <- df[,c(1,19)]
result_Sr <- aov(Sr ~ Sample, data = df_aov_Sr)
summary(result_Sr)

#### ANOVA for Ag ####
df_aov_Ag <- df[,c(1,20)]
result_Ag <- aov(Ag ~ Sample, data = df_aov_Ag)
summary(result_Ag)

#### ANOVA for Cs ####
df_aov_Cs <- df[,c(1,21)]
result_Cs <- aov(Cs ~ Sample, data = df_aov_Cs)
summary(result_Cs)

#### ANOVA for Ba ####
df_aov_Ba <- df[,c(1,22)]
result_Ba <- aov(Ba ~ Sample, data = df_aov_Ba)
summary(result_Ba)

#### ANOVA for La ####
df_aov_La <- df[,c(1,23)]
result_La <- aov(La ~ Sample, data = df_aov_La)
summary(result_La)

#### ANOVA for Ce ####
df_aov_Ce <- df[,c(1,24)]
result_Ce <- aov(Ce ~ Sample, data = df_aov_Ce)
summary(result_Ce)

#### ANOVA for Pb ####
df_aov_Pb <- df[,c(1,25)]
result_Pb <- aov(Pb ~ Sample, data = df_aov_Pb)
summary(result_Pb)

#### ANOVA for Rb.Sr ####
df_aov_Rb.Sr <- df[,c(1,26)]
result_Rb.Sr <- aov(Rb.Sr ~ Sample, data = df_aov_Rb.Sr)
summary(result_Rb.Sr)



#### Cluster analysis ####
# Data for HCA
dfHCA <- df0[order(df0$Island), ] # primary data
dfHCA$Concatenated <- paste(dfHCA$Floral, dfHCA$Island) # add new column, combine Col 2 and 4
dfHCA <- dfHCA[,c(1, 33, 2:32)]

colnames(dfHCA)[2] = "Sample" # rename new column
dfHCA <- dfHCA[, -c(1, 3:8)] # delete non-numerical columns other than Column 2
View(dfHCA)

# Prepare the data for cluster analysis
dfHCA_temp <- dfHCA[,-1] # Remove the first column to discard the non-numeric column
dfHCA_temp <- data.matrix(dfHCA_temp) # Change to matrix format for heatmap analysis
row.names(dfHCA_temp) <- paste0(as.character(dfHCA[,1]), 1:nrow(dfHCA)) # Add the locations to the plot

jpeg('figs/heatmap_honey_1.jpeg', res = 300, units = 'cm', height = 16, width = 20)
par(mar = c(2,2,2,2))
heatmap(dfHCA_temp)
dev.off()


## Cluster analysis using the complete method
# Linkage method is complete
jpeg('figs/hc_complete_honey_1.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(2,2,2,2))
hc <- hclust(dist(dfHCA_temp), 
             method = 'complete')
plot(hc, labels = dfHCA$Sample, main = 'Complete', hang = -1, cex = 0.3)
dev.off()


# Linkage method is average
jpeg('figs/hc_average_honey_1.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(2,2,2,2))
hc <- hclust(dist(dfHCA_temp), 
             method = 'average')
plot(hc, labels = dfHCA$Sample, main = 'Average', hang = -1, cex = 0.3)
dev.off()


plot(hc, labels = df$HCASample, cex = 0.5)

#Optional: K-means clustering
#k_means <- kmeans(dfHCA_temp, 3, nstart = 20)
#k_means
#table(k_means$cluster, dfHCA$Sample)

#### PCA ####
#install.packages('car') # Only one time install
library(car) # load the package

honey_1.pca <- prcomp(df[,-1], # Remove the first column
                  center = TRUE, # Center the data, similar to scaling
                  scale. = TRUE) # Need to be scaled because of magnitude diff.

jpeg('figs/biplot_honey_1.jpeg', res = 300, units = 'cm', height = 16, width = 16)
par(mar = c(4,4,1,1))
plot(honey_1.pca$x[,1:2], # Plot only the first and second PCs
     pch = 20,        # The marker 
     col = df$Sample, # The color
     xlim = c(-5,10), ylim = c(-5,6)) # The limits of the axes
dataEllipse(honey_1.pca$x[,1],  # PC1
            honey_1.pca$x[,2],  # PC2
            groups = df$Sample, # Groups
            lwd = 1,            # line width
            group.labels = c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                             'Polyfloral'), 
            plot.points = FALSE, # Do not want to redraw points on top of old points
            levels = 0.5,      # 50% confidence level, similar to what is set in ggbiplot
            add = TRUE,
            fill=TRUE, 
            fill.alpha = 0.02,
            col = c('black','red','green','blue','turquoise','magenta'))

legend('bottomright', c('Clover','Honeydew','Kamahi','Manufacturing','Manuka',
                        'Polyfloral'), pch = c(20,20,20,20,20,20),
       col = c('black','red','green','blue','turquoise','magenta'))
dev.off()




