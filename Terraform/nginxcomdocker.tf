//subir com docker

provider "aws" {
  region  = "us-east-2"
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}
resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginxdocker"
  ports {
    internal = 80
    external = 8000
  }
}



  
