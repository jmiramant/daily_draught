
def create_table

  ft = GData::Client::FusionTables.new 
  ft.clientlogin('josh@miramant.me', ENV['G_FUSION_PASS'])
  ft.set_api_key(ENV['G_FUSION'])

  cols = [{:name => "age",                 :type => 'number' },
    {:name => "create_date",         :type => 'datetime' },
    {:name => "description",         :type => 'string' },
    {:name => "established",         :type => 'number' },
    {:name => "id",                  :type => 'string' },
    {:name => "image_icon",          :type => 'string' },
    {:name => "image_large",         :type => 'string' },
    {:name => "image_medium",        :type => 'string' },
    {:name => "is_organic",          :type => 'string' },
    {:name => "name",                :type => 'string' },
    {:name => "status",              :type => 'string' },
    {:name => "status_display",      :type => 'string' },
    {:name => "update_date",         :type => 'datetime' },
    {:name => "website",             :type => 'string' },
    {:name => "brewery_id",          :type => 'string' },
    {:name => "country",             :type => 'string' },
    {:name => "hours_of_operation",  :type => 'string' },
    {:name => "id",                  :type => 'string' },
    {:name => "in_planning",         :type => 'string' },
    {:name => "location_type",       :type => 'string' },
    {:name => "is_closed",           :type => 'string' },
    {:name => "is_primary",          :type => 'string' },
    {:name => "latitude",            :type => 'location' },
    {:name => "longitude",           :type => 'location' },
    {:name => "sub_name",            :type => 'string' },
    {:name => "location_type_display", :type => 'string' },
    {:name => "phone",               :type => 'number' },
    {:name => "open_to_public",      :type => 'string' },
    {:name => "postal_code",         :type => 'number' },
    {:name => "street_address",      :type => 'location' },
    {:name => "update_date",         :type => 'string' }]

    sf_brews = ft.create_table "San Francisco Breweries", cols

  end




  def save_to_fusion_table(args)

    ft = GData::Client::FusionTables.new 
    ft.clientlogin('josh@miramant.me', ENV['G_FUSION_PASS'])
    ft.set_api_key(ENV['G_FUSION']) 

    tables = ft.show_tables
    sf_brew_table  = tables.select{|t| t.name == "San Francisco Breweries"}.first

    data = [{"age"           => agrs[:number],
      "create_date"          => agrs[:create_date],
      "description"          => agrs[:description],
      "established"          => agrs[:established],
      "id"                   => agrs[:id],
      "image_icon"           => agrs[:image_icon],
      "image_large"          => agrs[:image_large],
      "image_medium"         => agrs[:image_medium],
      "is_organic"           => agrs[:is_organic],
      "name"                 => agrs[:name],
      "status"               => agrs[:status],
      "status_display"       => agrs[:status_display],
      "update_date"          => agrs[:update_date],
      "website"              => agrs[:website],
      "brewery_id"           => agrs[:brewery_id],
      "country"              => agrs[:country],
      "hours_of_operation"   => agrs[:hours_of_operation],
      "id"                   => agrs[:id],
      "in_planning"          => agrs[:in_planning],
      "location_type"        => agrs[:location_type],
      "is_closed"            => agrs[:is_closed],
      "is_primary"           => agrs[:is_primary],
      "latitude"             => agrs[:latitude],
      "longitude"            => agrs[:longitude],
      "sub_name"             => agrs[:sub_name],
      "location_type_display"=> agrs[:location_type_display],
      "phone"                => agrs[:phone],
      "open_to_public"       => agrs[:open_to_public],
      "postal_code"          => agrs[:postal_code],
      "street_address"       => agrs[:street_address],
      "update_date"          => agrs[:update_date]}]

      sf_brew_table.insert(data)

    end
