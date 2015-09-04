#introducción
Las API NO guardan estados de sesión, hay que logearse en cada consulta

###GIT
deja los cambios en un estand by para poder cambiarse de rama

    ~ git stash

para sacar los archivos del estados stand by

    ~ git stash pop

Aplicación

    sourcetree

ejercicio de gitHub

    https://try.github.io/levels/1/challenges/1

###Ruby on Rails (RoR)
#### RVM --> Ruby Version Manager

generadores

    ~ rails g scaffold person name:string age:integer
    # nos permite crear un recurso con todo incluido, hasta el REST FU

    ~ rake routes
    # nos muestra tosdas las rutas del proyecto

    ~ rake db:migrate
### debuber
se puede usar tanto en vista como controlador, esto levanta una consola donde podemos hacer pruebas

### generadores de vitas

  + yaml
  + [slim](http://slim-lang.com/) el que se usa hoy

##Trabajar con **Bootstrap**
### gema bootstrap para rails

    [Gema Bootstrap](https://github.com/twbs/bootstrap-sass)

### para trabajar con bootstrap-sass
le cambiamos la extencion al archivo application.css por .scss

### tipos de rutas

+ verbo "path", "controlador#metodo"
+ get "/index", "contents#index"
+ match "/index/:id", "contents#index"
+ resource :products
    +get ...
+ resouce :products do
    resouce :tasks
  end
rutas especiales
+ put "tasks/:id/done"
+ put "tasks/:id/undone"  
agregar al resouce
+ resource :products do
    members do
      get :done, "tasks#done"
    end
  end
### levantar servidor en producción

    ~ rails s -e producction

### precompilar, genera los archivos que se veran en producción

      ~ rake assets:precompile

### creamos el controlador para groups

    ~ rails g controller groups index new create destroy edit update show

### ERROR **resouce :groups** no genera la ruta a index
la instrucción **resouce :group** genera las siguientes rutas
[Mas información en click aquí](http://api.rubyonrails.org/classes/ActionDispatch/Routing/Mapper/Resources.html)

´´´´´´´´
groups      POST   /groups(.:format)      groups#create
new_groups  GET    /groups/new(.:format)  groups#new
edit_groups GET    /groups/edit(.:format) groups#edit
            GET    /groups(.:format)      groups#show
            PATCH  /groups(.:format)      groups#update
            PUT    /groups(.:format)      groups#update
            DELETE /groups(.:format)      groups#destroy
´´´´´´´´´

la instrucción **resouces :group** genera las siguientes rutas

´´´´´´´´
groups     GET    /groups(.:format)          groups#index
           POST   /groups(.:format)          groups#create
new_group  GET    /groups/new(.:format)      groups#new
edit_group GET    /groups/:id/edit(.:format) groups#edit
 group     GET    /groups/:id(.:format)      groups#show
           PATCH  /groups/:id(.:format)      groups#update
           PUT    /groups/:id(.:format)      groups#update
           DELETE /groups/:id(.:format)      groups#destroy
´´´´´´´´´
