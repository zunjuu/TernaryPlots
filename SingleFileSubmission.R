library("vcd")
ternaryplot(Aflatoxin_biosynthesis, scale = 1, dimnames = NULL,
            dimnames_position = c("corner","edge","none"),
            dimnames_color = "blue", id = NULL, id_color = "black",
            id_just = c("center", "center"),
            coordinates = FALSE, grid = FALSE,
            labels = c("inside", "outside", "none"),
            labels_color = "darkgray", border = "grey", bg = "white",
            pch = 1, cex = 1, prop_size = TRUE, col = "red",
            main = "ternary plot", newpage = TRUE, pop = TRUE)
