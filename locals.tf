﻿#      _                     _     
#     | |                   | |    
#     | |     ___   ___ __ _| |___ 
#     | |    / _ \ / __/ _` | / __|
#     | |___| (_) | (_| (_| | \__ \
#     |______\___/ \___\__,_|_|___/

locals {

  name = "${var.name}-sg"

  merged_tags = merge(
    { Name = local.name },
    var.tags
  )
  
}