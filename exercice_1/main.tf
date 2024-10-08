provider "local" {

}

resource "local_file" "hello_world" {
    content = "Bienvenue dans Terraform !"
    filename = "hello_world.txt"
    file_permission = "0755"
}