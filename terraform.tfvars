bucket_name = "sillygully-jenkins-remote-state-bucket-007"

vpc_cidr             = "11.0.0.0/16"
vpc_name             = "sillygully-jenkins-vpc-1"
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
us_availability_zone = ["us-west-2a", "us-west-2d"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5x1lWLQno+R/p0nX1NaHJHOSR7PKmpA921LfptndWPlOPGsdQnQVkR4idppyJGod2mVRs/1VdxupPaiNBc/apiKP27C1obt8FuLHb8TRvj+8gWLKCNnu4I/oBruU8+MC70S8i5I1pJbEIisaMma4oJ2Xj18IMYrQbCwMt2/rgZCqYTaBZWExUokgz1oyJum03EV/7Ny3xupWzMWe7UgpT23+pfEvqNAIfwjW6IAJs7p8JgbgsrhPrj/OyYI1DKuc58AFWEo2NMvWVqAyQ2IOdb05FlqcRXeyh7kcjjmGECB93ipK0yK2ovJsKZopbkxulOTUrpqEg0IPXZi7ERLDQzIQDDPbySWLuwWJX7KveX8P3AYX9ijlR9e+EMZZNjMF+hOuDlO724SAl+1TMb/DDZUNH5pO0YlE1rB7YUc3c1Lzeh4XpQLt9MnduH8qXhBXrDwqqw+ojXq7Lp9d+4/wDVymE3y0CT1IgQDJPojvcu0ouoCDoMGuuu4aRqCCx9+6TEwCWMm7m8YRIAgqbQrVZ3z9O1UQeq4k52QjKoesKEk7Bca3prmPmhBSEGN7t9EVbDB+tX2T8I+3pUK1Y7R3wIYXVT8NeSq5bYeJPqimxYvQNXP+KAO3xo0ME1qyTckCBPfeMDFDh6Yn7Q3LEuPYmKBvcmTOkn0liogzZYUhJrw== hadoopbhanu@gmail.com"
ec2_ami_id = "ami-04dd23e62ed049936"