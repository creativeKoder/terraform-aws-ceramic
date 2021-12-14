data "docker_registry_image" "ipfs" {
  # name = "ceramicnetwork/ipfs-daemon:${var.image_tag}"
  name = "public.ecr.aws/i7w5o8j5/ceramicnetwork/ipfs-daemon:${var.image_tag}"
}
