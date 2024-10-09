provider local {

}

data "http" "my_data_source" {
    url = "https://cdn.wsform.com/wp-content/uploads/2018/09/country_full.csv"
}

resource "local_file" "downloaded_file" {
    filename = var.the_downloaded_filename
    content = data.http.my_data_source.response_body
}

