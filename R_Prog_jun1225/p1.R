## install.packages('jpeg')

library(jpeg)

img <- readJPEG('img.jpg')

dd = dim(img)

img = img[,,1]

print(min(img))
print(max(img))

img = round(256*img)

par(mfrow=c(2,2))

image(img, col = gray.colors(256))

nx = dd[1]
ny = dd[2]

x = img

dim(x) = c(1, nx*ny)

hist(x)

imgB = img * (img > 50)

image(imgB, col = gray.colors(256))
