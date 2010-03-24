module Trinidad
  class DbpoolWebAppAddon
    def configure(*args)
      puts 'Configuring database connection pool'
      splat = args.flatten
      create_resource(splat[0], splat[1], splat[2])
    end

    def create_resource(app_context, class_loader, options)
      resource = Trinidad::Tomcat::ContextResource.new
      resource.setAuth("Container")
      resource.setName(options.delete('name'))
      resource.setType("javax.sql.DataSource")
      resource.setDescription(options.delete('description')) if options.has_key?('description')

      options.each do |key, value|
        resource.setProperty(key.to_s, value.to_s)
      end

      add_library_to_class_loader(class_loader, File.dirname(__FILE__) + '/../../trinidad-libs/tomcat-dbcp.jar')
      add_library_to_class_loader(class_loader, driver_jar)
      resource.setProperty("driverClassName", driver_name)

      app_context.naming_resources.add_resource(resource)
      resource
    end

    def add_library_to_class_loader(class_loader, file)
      class_loader.addURL(java.io.File.new(file).to_url)
    end
  end
end