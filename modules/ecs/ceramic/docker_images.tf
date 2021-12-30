data "docker_registry_image" "ceramic" {
  # name = "ceramicnetwork/js-ceramic:${var.image_tag}"
  name = "public.ecr.aws/i7w5o8j5/ceramicnetwork/js-ceramic:${var.image_tag}"
}
