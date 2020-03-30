##CREO DATA FRAME NOMBRE RRSS#

RRSS<-data.frame(dummy1)
summary(RRSS)

#   genero         generacion        Comuna           uso        
#Min.   :0.0000   Min.   :1.000   Min.   :1.000   Min.   :0.0000  
#1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:5.000   1st Qu.:1.0000  
#Median :0.0000   Median :3.000   Median :7.000   Median :1.0000  
#Mean   :0.3377   Mean   :2.825   Mean   :6.613   Mean   :0.9843  
#3rd Qu.:1.0000   3rd Qu.:3.000   3rd Qu.:9.000   3rd Qu.:1.0000  
#Max.   :1.0000   Max.   :4.000   Max.   :9.000   Max.   :1.0000  
#compra          fuenteb          donde         prioridad    
#Min.   :0.0000   Min.   :1.000   Min.   :0.000   Min.   :0.000  
#1st Qu.:1.0000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
#Median :1.0000   Median :1.000   Median :2.000   Median :2.000  
#Mean   :0.8429   Mean   :1.539   Mean   :2.147   Mean   :1.872  
#3rd Qu.:1.0000   3rd Qu.:2.000   3rd Qu.:4.000   3rd Qu.:3.000  
#Max.   :1.0000   Max.   :3.000   Max.   :5.000   Max.   :4.000  
#frecuencia     porquecompra      volveria        alimento     
#Min.   :0.000   Min.   :0.000   Min.   :0.000   Min.   :0.0000  
#1st Qu.:2.000   1st Qu.:2.000   1st Qu.:1.000   1st Qu.:0.0000  
#Median :2.500   Median :2.000   Median :1.000   Median :0.0000  
#Mean   :2.168   Mean   :1.743   Mean   :1.021   Mean   :0.1099  
#3rd Qu.:3.000   3rd Qu.:2.000   3rd Qu.:1.000   3rd Qu.:0.0000  
#Max.   :3.000   Max.   :4.000   Max.   :3.000   Max.   :1.0000  
#entretencion         hogar           tabaqueria      
#Min.   :0.00000   Min.   :0.00000   Min.   :0.000000  
#1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.000000  
#Median :0.00000   Median :0.00000   Median :0.000000  
#Mean   :0.01571   Mean   :0.01047   Mean   :0.005236  
#3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.000000  
#Max.   :1.00000   Max.   :1.00000   Max.   :1.000000  
#usopersonal          mascotas          mecanica      
#Min.   :0.000000   Min.   :0.00000   Min.   :0.00000  
#1st Qu.:0.000000   1st Qu.:0.00000   1st Qu.:0.00000  
#Median :0.000000   Median :0.00000   Median :0.00000  
#Mean   :0.005236   Mean   :0.01309   Mean   :0.01571  
#3rd Qu.:0.000000   3rd Qu.:0.00000   3rd Qu.:0.00000  
#Max.   :1.000000   Max.   :1.00000   Max.   :1.00000  
#belleza          calzado          deporte       librer.ed.a     
#Min.   :0.0000   Min.   :0.0000   Min.   :0.000   Min.   :0.00000  
#1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.000   1st Qu.:0.00000  
#Median :0.0000   Median :0.0000   Median :0.000   Median :0.00000  
#Mean   :0.2749   Mean   :0.1728   Mean   :0.144   Mean   :0.03141  
#3rd Qu.:1.0000   3rd Qu.:0.0000   3rd Qu.:0.000   3rd Qu.:0.00000  
#Max.   :1.0000   Max.   :1.0000   Max.   :1.000   Max.   :1.00000  
#moda           muebles         servicios        tecnologia    
#Min.   :0.0000   Min.   :0.0000   Min.   :0.0000   Min.   :0.0000  
#1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000  
#Median :1.0000   Median :0.0000   Median :0.0000   Median :0.0000  
#Mean   :0.5419   Mean   :0.1099   Mean   :0.2461   Mean   :0.3063  
#3rd Qu.:1.0000   3rd Qu.:0.0000   3rd Qu.:0.0000   3rd Qu.:1.0000  
#Max.   :1.0000   Max.   :1.0000   Max.   :1.0000   Max.   :1.0000  
#electrohogar     mochilasybolsos        bebes         
#Min.   :0.00000   Min.   :0.000000   Min.   :0.000000  
#1st Qu.:0.00000   1st Qu.:0.000000   1st Qu.:0.000000  
#Median :0.00000   Median :0.000000   Median :0.000000  
#Mean   :0.06283   Mean   :0.002618   Mean   :0.007853  
#3rd Qu.:0.00000   3rd Qu.:0.000000   3rd Qu.:0.000000  
#Max.   :1.00000   Max.   :1.000000   Max.   :1.000000  
#musica           artesania         colecci.f3.n     
#Min.   :0.000000   Min.   :0.000000   Min.   :0.000000  
#1st Qu.:0.000000   1st Qu.:0.000000   1st Qu.:0.000000  
#Median :0.000000   Median :0.000000   Median :0.000000
#Mean   :0.002618   Mean   :0.002618   Mean   :0.002618  
#3rd Qu.:0.000000   3rd Qu.:0.000000   3rd Qu.:0.000000  
#Max.   :1.000000   Max.   :1.000000   Max.   :1.000000  
#

cor(RRSS)

## principal componente analisis #
apply(RRSS, 2, var)
pca_rrss <- prcomp(RRSS,center= TRUE, scale = TRUE)
print(pca_rrss)

plot(pca_rrss, type="l")
summary(pca_rrss)
#NUMERO DE COMPONENTES PRINCIPALES #

dim(pca_rrss$rotation)

#DESVIACION ESTANDAR DE COMPONENTES #
pca_nci$sdev

CPRRSS<-summary(pca_rrss)


PVE <- 100*pca_rrss$sdev^2/sum(pca_nci$sdev^2)

##INSTALAR PACKAGES NECESARIOS ##

install.packages("factoextra")
library(factoextra)

GRAFICOCP<-fviz_screeplot(pca_rrss, addlabels = TRUE, ylim = c(0, 20))
GRAFICOMAYORCONTRIBUCION<-fviz_contrib(pca_rrss, choice = "var", axes = 1, top = 10)

pc1<-apply(pca_rrss$rotation[,1]*RRSS, 1, sum)
pc2<-apply(pca_rrss$rotation[,2]*RRSS, 1, sum)
pc3<-apply(pca_rrss$rotation[,3]*RRSS, 1, sum)
pc4<-apply(pca_rrss$rotation[,4]*RRSS, 1, sum)
pc5<-apply(pca_rrss$rotation[,5]*RRSS, 1, sum)
pc6<-apply(pca_rrss$rotation[,6]*RRSS, 1, sum)
pc7<-apply(pca_rrss$rotation[,7]*RRSS, 1, sum)
pc8<-apply(pca_rrss$rotation[,8]*RRSS, 1, sum)
pc9<-apply(pca_rrss$rotation[,9]*RRSS, 1, sum)
pc10<-apply(pca_rrss$rotation[,10]*RRSS, 1, sum)



