#Initiate library
library("vcd", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")

#Function for ternary plot with size denoting abundance
tPlotSize <- function(temp) {
  temp1<-read.table(temp, header=TRUE)
  ternaryplot(temp1, scale = 1, dimnames = NULL,
              dimnames_position = c("corner","edge","none"),
              dimnames_color = "blue", id = NULL, id_color = "black",
              id_just = c("center", "center"),
              coordinates = FALSE, grid = FALSE,
              labels = c("inside", "outside", "none"),
              labels_color = "darkgray", border = "grey", bg = "white",
              pch = 1, cex = 1, prop_size = TRUE, col = "red",
              main = temp, newpage = TRUE, pop = TRUE)
}

#Function for ternary plot regardless of abundance
tPlotNon <- function(temp) {
  temp1<-read.table(temp, header=TRUE)
  ternaryplot(temp1, scale = 1, dimnames = NULL,
              dimnames_position = c("corner","edge","none"),
              dimnames_color = "blue", id = NULL, id_color = "black",
              id_just = c("center", "center"),
              coordinates = FALSE, grid = FALSE,
              labels = c("inside", "outside", "none"),
              labels_color = "darkgray", border = "grey", bg = "white",
              pch = 1, cex = 1, prop_size = FALSE, col = "red",
              main = temp, newpage = TRUE, pop = TRUE)
}

#For loop for all text files to pruduce abundance sized ternary plot
filenames <- list.files(pattern=".txt")
pdf("TernaryPlotSize.pdf")
for (f in filenames) {
  tPlotSize(f)
}
dev.off()

#For loop for all text files to pruduce abundance sized ternary plot
filenames <- list.files(pattern=".txt")
pdf("TernaryPlotNoSize.pdf")
for (f in filenames) {
  tPlotNon(f)
}
dev.off()
