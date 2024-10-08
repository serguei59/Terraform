provider "local" {

}

resource "local_file" "new_file" {
    filename = var.the_file_name
    content = var.the_file_content
    file_permission = "0755"    
}