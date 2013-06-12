$f_table = GData::Client::FusionTables.new      
$f_table.clientlogin('josh@miramant.me', ENV['G_FUSION_PASS'])
$f_table.set_api_key(ENV['G_FUSION'])
