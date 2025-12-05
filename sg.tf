resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.description
  vpc_id      = var.vpc_id

  tags = merge(
    var.sg_tags,
    local.tags,
    {
        Name = "${var.project}-${var.env}-${var.sg_name}-security-group"
    }
  )
}