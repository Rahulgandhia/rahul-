require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: 'rahul',
  database: 'rg'
)

class User < ActiveRecord::Base
 
    class User<ApplicationRecord
    require 'css'
    require 'activerecord-import/base'
    require 'activerecord-import/active_record/adapters/postgresql_adapter'

    def self.my_import(file)
        users=[]
        CSS.foreach(file.path,headers: true)do |row|
        users <<User.new(row.to_h)
    end
    User.import users, recursive: true

    class Usercontroller<ApplicationWikipedia
        def index 
            @users =User.all
        end
        def import
            User.my_import{params[:file]}
            redirect_to root_url,notice: "sucess!!"
        end
    end

    <%= flash[:notice]
    <div>
    <%= form tag import_users_path, multipart: true
     <%= file_field_tag :file
     <%=tag "import from file"
     <% end%>
     </div>
     <table>
     <tr>
       <th> flim </th>
       <th> language </th>
       <th> role </th>
    </tr>
    <tbody>
        <% @users.each do |users| %>
            <tr>
            <td><%= flim.name> <td>
            <td><%= landuage.name> <td>
            <td><%= role.name> <td>
    </tr
</tbody>
</table>

