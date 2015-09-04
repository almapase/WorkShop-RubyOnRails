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

### gema Bootrap para rails

    https://github.com/twbs/bootstrap-sass

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
