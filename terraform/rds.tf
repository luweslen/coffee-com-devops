resource "aws_db_instance" "luvops" {
  allocated_storage      = 10
  db_name                = "luvopsdb"
  engine                 = "postgres"
  engine_version         = "16"
  instance_class         = "db.t3.micro"
  username               = var.DB_USERNAME
  password               = var.DB_PASSWORD
  parameter_group_name   = "default.postgres16"
  publicly_accessible    = true
  db_subnet_group_name   = module.vpc.database_subnet_group_name
  vpc_security_group_ids = [module.vpc.default_security_group_id]
}
