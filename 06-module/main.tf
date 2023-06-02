module "sample" {
  source = "./module"
  input = "xyz"
  input = module.dummy.dummy_op
}
module "dummy" {
        source = "./dummy"
}
