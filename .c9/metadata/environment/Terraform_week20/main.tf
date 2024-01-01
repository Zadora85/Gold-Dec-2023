{"changed":true,"filter":false,"title":"main.tf","tooltip":"/Terraform_week20/main.tf","value":"resource \"aws_instance\" \"web_server\" {\n  ami                    = \"ami-079db87dc4c10ac91\"\n  instance_type          = \"t2.micro\"\n  vpc_security_group_ids = [aws_security_group.sg_project.id]\n  key_name               = \"us-east-kp\"\n  user_data              = file(\"script.sh\")\n}\n\nresource \"aws_security_group\" \"sg_project\" {\n  name        = \"sg_project\"\n  description = \"allow access on ports 8080 and 22\"\n  vpc_id      = \"vpc-0760c055dfc13919e\"\n\n  ingress {\n    description = \"ssh access\"\n    from_port   = 22\n    to_port     = 22\n    protocol    = \"tcp\"\n    cidr_blocks = [\"0.0.0.0/0\"]\n  }\n\n  ingress {\n    description = \"allow http access\"\n    from_port   = 8080\n    to_port     = 8080\n    protocol    = \"tcp\"\n    cidr_blocks = [\"0.0.0.0/0\"]\n  }\n\n  egress {\n    from_port   = 0\n    to_port     = 0\n    protocol    = \"-1\"\n    cidr_blocks = [\"0.0.0.0/0\"]\n  }\n}\n\nresource \"aws_s3_bucket\" \"bucket\" {\n  bucket = \"zadora9868y-gold-week20project\"\n\n  tags = {\n    Name = \"Jenkins\"\n  }\n}\n","undoManager":{"mark":-2,"position":100,"stack":[[{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"insert","lines":["  "],"id":1106,"ignore":true},{"start":{"row":22,"column":0},"end":{"row":22,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":38,"column":22},"end":{"row":38,"column":23},"action":"remove","lines":["-"],"id":1107}],[{"start":{"row":38,"column":22},"end":{"row":38,"column":23},"action":"insert","lines":["_"],"id":1108}],[{"start":{"row":38,"column":29},"end":{"row":38,"column":30},"action":"remove","lines":["-"],"id":1109}],[{"start":{"row":38,"column":29},"end":{"row":38,"column":30},"action":"insert","lines":["_"],"id":1110}],[{"start":{"row":3,"column":38},"end":{"row":3,"column":39},"action":"remove","lines":["u"],"id":1111},{"start":{"row":3,"column":37},"end":{"row":3,"column":38},"action":"remove","lines":["o"]},{"start":{"row":3,"column":36},"end":{"row":3,"column":37},"action":"remove","lines":["r"]},{"start":{"row":3,"column":35},"end":{"row":3,"column":36},"action":"remove","lines":["g"]},{"start":{"row":3,"column":34},"end":{"row":3,"column":35},"action":"remove","lines":["_"]}],[{"start":{"row":3,"column":33},"end":{"row":3,"column":34},"action":"remove","lines":["y"],"id":1112},{"start":{"row":3,"column":32},"end":{"row":3,"column":33},"action":"remove","lines":["t"]},{"start":{"row":3,"column":31},"end":{"row":3,"column":32},"action":"remove","lines":["i"]},{"start":{"row":3,"column":30},"end":{"row":3,"column":31},"action":"remove","lines":["r"]},{"start":{"row":3,"column":29},"end":{"row":3,"column":30},"action":"remove","lines":["u"]},{"start":{"row":3,"column":28},"end":{"row":3,"column":29},"action":"remove","lines":["c"]},{"start":{"row":3,"column":27},"end":{"row":3,"column":28},"action":"remove","lines":["e"]},{"start":{"row":3,"column":26},"end":{"row":3,"column":27},"action":"remove","lines":["s"]}],[{"start":{"row":3,"column":26},"end":{"row":3,"column":27},"action":"remove","lines":["p"],"id":1113},{"start":{"row":3,"column":25},"end":{"row":3,"column":26},"action":"remove","lines":["_"]},{"start":{"row":3,"column":24},"end":{"row":3,"column":25},"action":"remove","lines":["s"]},{"start":{"row":3,"column":23},"end":{"row":3,"column":24},"action":"remove","lines":["w"]},{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"remove","lines":["a"]}],[{"start":{"row":3,"column":22},"end":{"row":3,"column":42},"action":"insert","lines":["sg-060b7bfede17eed7e"],"id":1114}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":1},"action":"remove","lines":["}"],"id":1115},{"start":{"row":6,"column":0},"end":{"row":7,"column":1},"action":"insert","lines":["}","}"]}],[{"start":{"row":6,"column":0},"end":{"row":7,"column":1},"action":"remove","lines":["}","}"],"id":1116},{"start":{"row":6,"column":0},"end":{"row":7,"column":1},"action":"insert","lines":["}","}"]}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "],"id":1117}],[{"start":{"row":7,"column":0},"end":{"row":7,"column":1},"action":"remove","lines":["}"],"id":1118},{"start":{"row":6,"column":3},"end":{"row":7,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "],"id":1119,"ignore":true}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "],"id":1120}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "],"id":1121,"ignore":true}],[{"start":{"row":3,"column":43},"end":{"row":3,"column":44},"action":"remove","lines":["]"],"id":1122}],[{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"remove","lines":["["],"id":1123}],[{"start":{"row":3,"column":42},"end":{"row":3,"column":43},"action":"insert","lines":["]"],"id":1124}],[{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"insert","lines":["["],"id":1125}],[{"start":{"row":1,"column":43},"end":{"row":1,"column":44},"action":"insert","lines":["]"],"id":1126}],[{"start":{"row":1,"column":20},"end":{"row":1,"column":21},"action":"insert","lines":["["],"id":1127}],[{"start":{"row":1,"column":44},"end":{"row":1,"column":45},"action":"remove","lines":["]"],"id":1128}],[{"start":{"row":1,"column":20},"end":{"row":1,"column":21},"action":"remove","lines":["["],"id":1129}],[{"start":{"row":1,"column":4},"end":{"row":1,"column":5},"action":"remove","lines":["i"],"id":1130},{"start":{"row":1,"column":3},"end":{"row":1,"column":4},"action":"remove","lines":["m"]},{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"remove","lines":["a"]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":["v"],"id":1131},{"start":{"row":1,"column":3},"end":{"row":1,"column":4},"action":"insert","lines":["a"]},{"start":{"row":1,"column":4},"end":{"row":1,"column":5},"action":"insert","lines":["r"]},{"start":{"row":1,"column":5},"end":{"row":1,"column":6},"action":"insert","lines":["i"]},{"start":{"row":1,"column":6},"end":{"row":1,"column":7},"action":"insert","lines":["a"]},{"start":{"row":1,"column":7},"end":{"row":1,"column":8},"action":"insert","lines":["b"]},{"start":{"row":1,"column":8},"end":{"row":1,"column":9},"action":"insert","lines":["l"]},{"start":{"row":1,"column":9},"end":{"row":1,"column":10},"action":"insert","lines":["e"]}],[{"start":{"row":1,"column":9},"end":{"row":1,"column":10},"action":"remove","lines":["e"],"id":1132},{"start":{"row":1,"column":8},"end":{"row":1,"column":9},"action":"remove","lines":["l"]},{"start":{"row":1,"column":7},"end":{"row":1,"column":8},"action":"remove","lines":["b"]},{"start":{"row":1,"column":6},"end":{"row":1,"column":7},"action":"remove","lines":["a"]},{"start":{"row":1,"column":5},"end":{"row":1,"column":6},"action":"remove","lines":["i"]},{"start":{"row":1,"column":4},"end":{"row":1,"column":5},"action":"remove","lines":["r"]},{"start":{"row":1,"column":3},"end":{"row":1,"column":4},"action":"remove","lines":["a"]},{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"remove","lines":["v"]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":["a"],"id":1133},{"start":{"row":1,"column":3},"end":{"row":1,"column":4},"action":"insert","lines":["m"]},{"start":{"row":1,"column":4},"end":{"row":1,"column":5},"action":"insert","lines":["i"]}],[{"start":{"row":1,"column":21},"end":{"row":1,"column":42},"action":"remove","lines":["ami-09f146cbf36a93cd8"],"id":1134},{"start":{"row":1,"column":21},"end":{"row":1,"column":42},"action":"insert","lines":["ami-079db87dc4c10ac91"]}],[{"start":{"row":38,"column":35},"end":{"row":38,"column":36},"action":"remove","lines":["0"],"id":1135},{"start":{"row":38,"column":34},"end":{"row":38,"column":35},"action":"remove","lines":["2"]},{"start":{"row":38,"column":33},"end":{"row":38,"column":34},"action":"remove","lines":["k"]},{"start":{"row":38,"column":32},"end":{"row":38,"column":33},"action":"remove","lines":["e"]},{"start":{"row":38,"column":31},"end":{"row":38,"column":32},"action":"remove","lines":["e"]},{"start":{"row":38,"column":30},"end":{"row":38,"column":31},"action":"remove","lines":["w"]},{"start":{"row":38,"column":29},"end":{"row":38,"column":30},"action":"remove","lines":["_"]},{"start":{"row":38,"column":28},"end":{"row":38,"column":29},"action":"remove","lines":["a"]},{"start":{"row":38,"column":27},"end":{"row":38,"column":28},"action":"remove","lines":["r"]},{"start":{"row":38,"column":26},"end":{"row":38,"column":27},"action":"remove","lines":["o"]},{"start":{"row":38,"column":25},"end":{"row":38,"column":26},"action":"remove","lines":["d"]},{"start":{"row":38,"column":24},"end":{"row":38,"column":25},"action":"remove","lines":["a"]},{"start":{"row":38,"column":23},"end":{"row":38,"column":24},"action":"remove","lines":["Z"]},{"start":{"row":38,"column":22},"end":{"row":38,"column":23},"action":"remove","lines":["_"]},{"start":{"row":38,"column":21},"end":{"row":38,"column":22},"action":"remove","lines":["t"]},{"start":{"row":38,"column":20},"end":{"row":38,"column":21},"action":"remove","lines":["e"]},{"start":{"row":38,"column":19},"end":{"row":38,"column":20},"action":"remove","lines":["k"]},{"start":{"row":38,"column":18},"end":{"row":38,"column":19},"action":"remove","lines":["c"]},{"start":{"row":38,"column":17},"end":{"row":38,"column":18},"action":"remove","lines":["u"]},{"start":{"row":38,"column":16},"end":{"row":38,"column":17},"action":"remove","lines":["b"]},{"start":{"row":38,"column":15},"end":{"row":38,"column":16},"action":"remove","lines":["d"]},{"start":{"row":38,"column":14},"end":{"row":38,"column":15},"action":"remove","lines":["l"]},{"start":{"row":38,"column":13},"end":{"row":38,"column":14},"action":"remove","lines":["o"]}],[{"start":{"row":38,"column":12},"end":{"row":38,"column":13},"action":"remove","lines":["g"],"id":1136}],[{"start":{"row":38,"column":12},"end":{"row":38,"column":13},"action":"insert","lines":["z"],"id":1137},{"start":{"row":38,"column":13},"end":{"row":38,"column":14},"action":"insert","lines":["a"]},{"start":{"row":38,"column":14},"end":{"row":38,"column":15},"action":"insert","lines":["o"]},{"start":{"row":38,"column":15},"end":{"row":38,"column":16},"action":"insert","lines":["d"]},{"start":{"row":38,"column":16},"end":{"row":38,"column":17},"action":"insert","lines":["r"]}],[{"start":{"row":38,"column":16},"end":{"row":38,"column":17},"action":"remove","lines":["r"],"id":1138},{"start":{"row":38,"column":15},"end":{"row":38,"column":16},"action":"remove","lines":["d"]},{"start":{"row":38,"column":14},"end":{"row":38,"column":15},"action":"remove","lines":["o"]}],[{"start":{"row":38,"column":14},"end":{"row":38,"column":15},"action":"insert","lines":["d"],"id":1139},{"start":{"row":38,"column":15},"end":{"row":38,"column":16},"action":"insert","lines":["o"]},{"start":{"row":38,"column":16},"end":{"row":38,"column":17},"action":"insert","lines":["r"]},{"start":{"row":38,"column":17},"end":{"row":38,"column":18},"action":"insert","lines":["a"]}],[{"start":{"row":38,"column":18},"end":{"row":38,"column":19},"action":"insert","lines":["9"],"id":1140},{"start":{"row":38,"column":19},"end":{"row":38,"column":20},"action":"insert","lines":["8"]},{"start":{"row":38,"column":20},"end":{"row":38,"column":21},"action":"insert","lines":["6"]},{"start":{"row":38,"column":21},"end":{"row":38,"column":22},"action":"insert","lines":["8"]},{"start":{"row":38,"column":22},"end":{"row":38,"column":23},"action":"insert","lines":["y"]},{"start":{"row":38,"column":23},"end":{"row":38,"column":24},"action":"insert","lines":["-"]}],[{"start":{"row":38,"column":24},"end":{"row":38,"column":25},"action":"insert","lines":["g"],"id":1141},{"start":{"row":38,"column":25},"end":{"row":38,"column":26},"action":"insert","lines":["o"]},{"start":{"row":38,"column":26},"end":{"row":38,"column":27},"action":"insert","lines":["l"]},{"start":{"row":38,"column":27},"end":{"row":38,"column":28},"action":"insert","lines":["f"]}],[{"start":{"row":38,"column":27},"end":{"row":38,"column":28},"action":"remove","lines":["f"],"id":1142}],[{"start":{"row":38,"column":27},"end":{"row":38,"column":28},"action":"insert","lines":["d"],"id":1143}],[{"start":{"row":38,"column":28},"end":{"row":38,"column":29},"action":"insert","lines":["-"],"id":1144},{"start":{"row":38,"column":29},"end":{"row":38,"column":30},"action":"insert","lines":["w"]},{"start":{"row":38,"column":30},"end":{"row":38,"column":31},"action":"insert","lines":["e"]}],[{"start":{"row":38,"column":31},"end":{"row":38,"column":32},"action":"insert","lines":["e"],"id":1145},{"start":{"row":38,"column":32},"end":{"row":38,"column":33},"action":"insert","lines":["k"]}],[{"start":{"row":38,"column":33},"end":{"row":38,"column":34},"action":"insert","lines":["2"],"id":1146},{"start":{"row":38,"column":34},"end":{"row":38,"column":35},"action":"insert","lines":["0"]}],[{"start":{"row":38,"column":35},"end":{"row":38,"column":36},"action":"insert","lines":["-"],"id":1147}],[{"start":{"row":38,"column":35},"end":{"row":38,"column":36},"action":"remove","lines":["-"],"id":1148}],[{"start":{"row":38,"column":35},"end":{"row":38,"column":36},"action":"insert","lines":["p"],"id":1149},{"start":{"row":38,"column":36},"end":{"row":38,"column":37},"action":"insert","lines":["r"]},{"start":{"row":38,"column":37},"end":{"row":38,"column":38},"action":"insert","lines":["o"]},{"start":{"row":38,"column":38},"end":{"row":38,"column":39},"action":"insert","lines":["j"]},{"start":{"row":38,"column":39},"end":{"row":38,"column":40},"action":"insert","lines":["e"]},{"start":{"row":38,"column":40},"end":{"row":38,"column":41},"action":"insert","lines":["c"]},{"start":{"row":38,"column":41},"end":{"row":38,"column":42},"action":"insert","lines":["t"]}],[{"start":{"row":5,"column":37},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":1150},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":6,"column":2},"end":{"row":10,"column":1},"action":"insert","lines":["","  tags = {","    Name = \"Jenkins\"","  }","}"],"id":1151}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":1},"action":"remove","lines":["}"],"id":1152}],[{"start":{"row":10,"column":0},"end":{"row":11,"column":0},"action":"remove","lines":["",""],"id":1153}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "],"id":1154},{"start":{"row":5,"column":37},"end":{"row":6,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":43,"column":2},"end":{"row":45,"column":3},"action":"remove","lines":["tags = {","    Name = \"Jenkins\"","  }"],"id":1155},{"start":{"row":43,"column":0},"end":{"row":43,"column":2},"action":"remove","lines":["  "]},{"start":{"row":42,"column":0},"end":{"row":43,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":41,"column":43},"end":{"row":42,"column":0},"action":"insert","lines":["",""],"id":1156},{"start":{"row":42,"column":0},"end":{"row":42,"column":2},"action":"insert","lines":["  "]},{"start":{"row":42,"column":2},"end":{"row":43,"column":0},"action":"insert","lines":["",""]},{"start":{"row":43,"column":0},"end":{"row":43,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":43,"column":2},"end":{"row":46,"column":1},"action":"insert","lines":["tags = {","    Name = \"Jenkins\"","  }","}"],"id":1157}],[{"start":{"row":48,"column":0},"end":{"row":48,"column":1},"action":"remove","lines":["}"],"id":1158},{"start":{"row":47,"column":0},"end":{"row":48,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":6,"column":2},"end":{"row":8,"column":3},"action":"remove","lines":["tags = {","    Name = \"Jenkins\"","  }"],"id":1159}],[{"start":{"row":6,"column":2},"end":{"row":7,"column":0},"action":"remove","lines":["",""],"id":1160}],[{"start":{"row":6,"column":2},"end":{"row":8,"column":0},"action":"insert","lines":["","  ",""],"id":1161}],[{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"remove","lines":["  "],"id":1162}],[{"start":{"row":6,"column":2},"end":{"row":7,"column":0},"action":"remove","lines":["",""],"id":1163}],[{"start":{"row":36,"column":1},"end":{"row":37,"column":0},"action":"remove","lines":["",""],"id":1164},{"start":{"row":36,"column":0},"end":{"row":36,"column":1},"action":"remove","lines":["}"]}],[{"start":{"row":6,"column":2},"end":{"row":7,"column":0},"action":"remove","lines":["",""],"id":1165}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "],"id":1166}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "],"id":1167}],[{"start":{"row":34,"column":3},"end":{"row":35,"column":0},"action":"insert","lines":["",""],"id":1168},{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":35,"column":2},"end":{"row":35,"column":4},"action":"insert","lines":["  "],"id":1169}],[{"start":{"row":35,"column":4},"end":{"row":35,"column":5},"action":"insert","lines":["}"],"id":1170}],[{"start":{"row":34,"column":2},"end":{"row":34,"column":4},"action":"insert","lines":["  "],"id":1171}],[{"start":{"row":35,"column":2},"end":{"row":35,"column":4},"action":"remove","lines":["  "],"id":1172}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "],"id":1173,"ignore":true},{"start":{"row":34,"column":2},"end":{"row":35,"column":2},"action":"remove","lines":["  }","  "]},{"start":{"row":34,"column":2},"end":{"row":35,"column":0},"action":"insert","lines":["}",""]},{"start":{"row":39,"column":0},"end":{"row":39,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":1},"action":"remove","lines":["}"],"id":1174},{"start":{"row":5,"column":37},"end":{"row":6,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":1},"action":"insert","lines":["}"],"id":1175}],[{"start":{"row":6,"column":1},"end":{"row":7,"column":0},"action":"insert","lines":["",""],"id":1176}],[{"start":{"row":0,"column":40},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":1177}],[{"start":{"row":0,"column":40},"end":{"row":1,"column":0},"action":"remove","lines":["",""],"id":1178}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":1},"action":"insert","lines":[" "],"id":1179}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":1},"action":"remove","lines":[" "],"id":1180,"ignore":true}],[{"start":{"row":0,"column":39},"end":{"row":0,"column":40},"action":"remove","lines":["{"],"id":1181}],[{"start":{"row":0,"column":39},"end":{"row":0,"column":40},"action":"insert","lines":[":"],"id":1182}],[{"start":{"row":0,"column":39},"end":{"row":0,"column":40},"action":"remove","lines":[":"],"id":1183}],[{"start":{"row":0,"column":39},"end":{"row":0,"column":40},"action":"insert","lines":["{"],"id":1184}],[{"start":{"row":0,"column":39},"end":{"row":0,"column":40},"action":"remove","lines":["{"],"id":1185}],[{"start":{"row":0,"column":39},"end":{"row":0,"column":44},"action":"insert","lines":["(\"{\")"],"id":1186}],[{"start":{"row":0,"column":40},"end":{"row":0,"column":41},"action":"remove","lines":["\""],"id":1187},{"start":{"row":0,"column":39},"end":{"row":0,"column":40},"action":"remove","lines":["("]}],[{"start":{"row":0,"column":41},"end":{"row":0,"column":42},"action":"remove","lines":[")"],"id":1188},{"start":{"row":0,"column":40},"end":{"row":0,"column":41},"action":"remove","lines":["\""]}],[{"start":{"row":0,"column":36},"end":{"row":0,"column":37},"action":"remove","lines":["e"],"id":1189},{"start":{"row":0,"column":35},"end":{"row":0,"column":36},"action":"remove","lines":["c"]},{"start":{"row":0,"column":34},"end":{"row":0,"column":35},"action":"remove","lines":["n"]},{"start":{"row":0,"column":33},"end":{"row":0,"column":34},"action":"remove","lines":["a"]},{"start":{"row":0,"column":32},"end":{"row":0,"column":33},"action":"remove","lines":["t"]},{"start":{"row":0,"column":31},"end":{"row":0,"column":32},"action":"remove","lines":["s"]},{"start":{"row":0,"column":30},"end":{"row":0,"column":31},"action":"remove","lines":["n"]},{"start":{"row":0,"column":29},"end":{"row":0,"column":30},"action":"remove","lines":["i"]},{"start":{"row":0,"column":28},"end":{"row":0,"column":29},"action":"remove","lines":["_"]}],[{"start":{"row":0,"column":27},"end":{"row":0,"column":28},"action":"remove","lines":["2"],"id":1190},{"start":{"row":0,"column":26},"end":{"row":0,"column":27},"action":"remove","lines":["c"]},{"start":{"row":0,"column":25},"end":{"row":0,"column":26},"action":"remove","lines":["e"]}],[{"start":{"row":0,"column":25},"end":{"row":0,"column":26},"action":"insert","lines":["w"],"id":1191},{"start":{"row":0,"column":26},"end":{"row":0,"column":27},"action":"insert","lines":["e"]},{"start":{"row":0,"column":27},"end":{"row":0,"column":28},"action":"insert","lines":["b"]},{"start":{"row":0,"column":28},"end":{"row":0,"column":29},"action":"insert","lines":["_"]},{"start":{"row":0,"column":29},"end":{"row":0,"column":30},"action":"insert","lines":["s"]},{"start":{"row":0,"column":30},"end":{"row":0,"column":31},"action":"insert","lines":["e"]},{"start":{"row":0,"column":31},"end":{"row":0,"column":32},"action":"insert","lines":["r"]}],[{"start":{"row":0,"column":32},"end":{"row":0,"column":33},"action":"insert","lines":["v"],"id":1192},{"start":{"row":0,"column":33},"end":{"row":0,"column":34},"action":"insert","lines":["e"]},{"start":{"row":0,"column":34},"end":{"row":0,"column":35},"action":"insert","lines":["r"]}],[{"start":{"row":3,"column":20},"end":{"row":3,"column":44},"action":"remove","lines":["[\"sg-060b7bfede17eed7e\"]"],"id":1193},{"start":{"row":3,"column":20},"end":{"row":3,"column":54},"action":"insert","lines":["[aws_security_group.sg_project.id]"]}],[{"start":{"row":3,"column":3},"end":{"row":3,"column":17},"action":"remove","lines":["ecurity_groups"],"id":1194},{"start":{"row":3,"column":2},"end":{"row":3,"column":3},"action":"remove","lines":["s"]}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":24},"action":"insert","lines":["vpc_security_group_ids"],"id":1195}],[{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"remove","lines":["y"],"id":1196},{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"remove","lines":["t"]},{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"remove","lines":["i"]},{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"remove","lines":["r"]},{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"remove","lines":["u"]},{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"remove","lines":["c"]},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"remove","lines":["e"]},{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"remove","lines":["s"]},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"remove","lines":["_"]},{"start":{"row":9,"column":19},"end":{"row":9,"column":20},"action":"remove","lines":["s"]},{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"remove","lines":["w"]}],[{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"remove","lines":["a"],"id":1197}],[{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"insert","lines":["s"],"id":1198},{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"insert","lines":["g"]}],[{"start":{"row":9,"column":35},"end":{"row":9,"column":36},"action":"remove","lines":["t"],"id":1199},{"start":{"row":9,"column":34},"end":{"row":9,"column":35},"action":"remove","lines":["c"]},{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"remove","lines":["e"]},{"start":{"row":9,"column":32},"end":{"row":9,"column":33},"action":"remove","lines":["j"]},{"start":{"row":9,"column":31},"end":{"row":9,"column":32},"action":"remove","lines":["o"]},{"start":{"row":9,"column":30},"end":{"row":9,"column":31},"action":"remove","lines":["r"]},{"start":{"row":9,"column":29},"end":{"row":9,"column":30},"action":"remove","lines":["p"]},{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"remove","lines":["_"]}],[{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"remove","lines":["g"],"id":1200},{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"remove","lines":["s"]},{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"remove","lines":["."]}],[{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"remove","lines":["p"],"id":1201},{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"remove","lines":["u"]},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"remove","lines":["o"]},{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"remove","lines":["r"]},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"remove","lines":["g"]}],[{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"insert","lines":["p"],"id":1202},{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"insert","lines":["r"]},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"insert","lines":["o"]},{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"insert","lines":["j"]},{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"insert","lines":["e"]},{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"insert","lines":["c"]},{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"insert","lines":["t"]}],[{"start":{"row":1,"column":18},"end":{"row":1,"column":25},"action":"insert","lines":["       "],"id":1203,"ignore":true},{"start":{"row":2,"column":18},"end":{"row":2,"column":25},"action":"insert","lines":["       "]},{"start":{"row":4,"column":18},"end":{"row":4,"column":25},"action":"insert","lines":["       "]},{"start":{"row":5,"column":18},"end":{"row":5,"column":25},"action":"insert","lines":["       "]}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":41},"action":"insert","lines":["https://github.com/Zadora85/Gold-Dec-2023"],"id":1204}],[{"start":{"row":44,"column":40},"end":{"row":44,"column":41},"action":"remove","lines":["3"],"id":1205},{"start":{"row":44,"column":39},"end":{"row":44,"column":40},"action":"remove","lines":["2"]},{"start":{"row":44,"column":38},"end":{"row":44,"column":39},"action":"remove","lines":["0"]},{"start":{"row":44,"column":37},"end":{"row":44,"column":38},"action":"remove","lines":["2"]},{"start":{"row":44,"column":36},"end":{"row":44,"column":37},"action":"remove","lines":["-"]},{"start":{"row":44,"column":35},"end":{"row":44,"column":36},"action":"remove","lines":["c"]},{"start":{"row":44,"column":34},"end":{"row":44,"column":35},"action":"remove","lines":["e"]},{"start":{"row":44,"column":33},"end":{"row":44,"column":34},"action":"remove","lines":["D"]},{"start":{"row":44,"column":32},"end":{"row":44,"column":33},"action":"remove","lines":["-"]},{"start":{"row":44,"column":31},"end":{"row":44,"column":32},"action":"remove","lines":["d"]},{"start":{"row":44,"column":30},"end":{"row":44,"column":31},"action":"remove","lines":["l"]},{"start":{"row":44,"column":29},"end":{"row":44,"column":30},"action":"remove","lines":["o"]},{"start":{"row":44,"column":28},"end":{"row":44,"column":29},"action":"remove","lines":["G"]},{"start":{"row":44,"column":27},"end":{"row":44,"column":28},"action":"remove","lines":["/"]},{"start":{"row":44,"column":26},"end":{"row":44,"column":27},"action":"remove","lines":["5"]},{"start":{"row":44,"column":25},"end":{"row":44,"column":26},"action":"remove","lines":["8"]},{"start":{"row":44,"column":24},"end":{"row":44,"column":25},"action":"remove","lines":["a"]},{"start":{"row":44,"column":23},"end":{"row":44,"column":24},"action":"remove","lines":["r"]},{"start":{"row":44,"column":22},"end":{"row":44,"column":23},"action":"remove","lines":["o"]},{"start":{"row":44,"column":21},"end":{"row":44,"column":22},"action":"remove","lines":["d"]},{"start":{"row":44,"column":20},"end":{"row":44,"column":21},"action":"remove","lines":["a"]},{"start":{"row":44,"column":19},"end":{"row":44,"column":20},"action":"remove","lines":["Z"]},{"start":{"row":44,"column":18},"end":{"row":44,"column":19},"action":"remove","lines":["/"]},{"start":{"row":44,"column":17},"end":{"row":44,"column":18},"action":"remove","lines":["m"]},{"start":{"row":44,"column":16},"end":{"row":44,"column":17},"action":"remove","lines":["o"]},{"start":{"row":44,"column":15},"end":{"row":44,"column":16},"action":"remove","lines":["c"]},{"start":{"row":44,"column":14},"end":{"row":44,"column":15},"action":"remove","lines":["."]},{"start":{"row":44,"column":13},"end":{"row":44,"column":14},"action":"remove","lines":["b"]},{"start":{"row":44,"column":12},"end":{"row":44,"column":13},"action":"remove","lines":["u"]},{"start":{"row":44,"column":11},"end":{"row":44,"column":12},"action":"remove","lines":["h"]},{"start":{"row":44,"column":10},"end":{"row":44,"column":11},"action":"remove","lines":["t"]},{"start":{"row":44,"column":9},"end":{"row":44,"column":10},"action":"remove","lines":["i"]},{"start":{"row":44,"column":8},"end":{"row":44,"column":9},"action":"remove","lines":["g"]},{"start":{"row":44,"column":7},"end":{"row":44,"column":8},"action":"remove","lines":["/"]},{"start":{"row":44,"column":6},"end":{"row":44,"column":7},"action":"remove","lines":["/"]},{"start":{"row":44,"column":5},"end":{"row":44,"column":6},"action":"remove","lines":[":"]},{"start":{"row":44,"column":4},"end":{"row":44,"column":5},"action":"remove","lines":["s"]},{"start":{"row":44,"column":3},"end":{"row":44,"column":4},"action":"remove","lines":["p"]},{"start":{"row":44,"column":2},"end":{"row":44,"column":3},"action":"remove","lines":["t"]},{"start":{"row":44,"column":1},"end":{"row":44,"column":2},"action":"remove","lines":["t"]}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":1},"action":"remove","lines":["h"],"id":1206}]]},"ace":{"folds":[],"scrolltop":396.9394931121458,"scrollleft":0,"selection":{"start":{"row":44,"column":0},"end":{"row":44,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1704053960273}