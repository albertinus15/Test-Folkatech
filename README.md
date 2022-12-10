# Test-Folkatech

Proses menjalankan terraform .yml untuk mencreate Centos 7 dan sudah menggunakan security grup sebagai berikut :
_Pastikan semua file ymlnya berada pada 1 folder_

1. hal yang pertama kita lakukan adalah :
```
terraform init
```
2. kemudian kita jalankan module yang nantinya membuat VPC
```
terraform apply -target=module.vpc_exploration
```
3. lalu jalankan untuk mencreate security grupnya :
```
terraform apply -target=module.sg_exploration
```
4. terakhir jalankan untuk mencreate OSnya :
```
terraform apply -target=module.ec2_exploration
```
