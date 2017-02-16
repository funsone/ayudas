Prefix Verb   URI Pattern                                                                                 Controller#Action
   solicitante_beneficiario_solicitudes GET    /solicitantes/:solicitante_id/beneficiarios/:beneficiario_id/solicitudes(.:format)          solicitudes#index
                                        POST   /solicitantes/:solicitante_id/beneficiarios/:beneficiario_id/solicitudes(.:format)          solicitudes#create
 new_solicitante_beneficiario_solicitud GET    /solicitantes/:solicitante_id/beneficiarios/:beneficiario_id/solicitudes/new(.:format)      solicitudes#new
edit_solicitante_beneficiario_solicitud GET    /solicitantes/:solicitante_id/beneficiarios/:beneficiario_id/solicitudes/:id/edit(.:format) solicitudes#edit
     solicitante_beneficiario_solicitud GET    /solicitantes/:solicitante_id/beneficiarios/:beneficiario_id/solicitudes/:id(.:format)      solicitudes#show
                                        PATCH  /solicitantes/:solicitante_id/beneficiarios/:beneficiario_id/solicitudes/:id(.:format)      solicitudes#update
                                        PUT    /solicitantes/:solicitante_id/beneficiarios/:beneficiario_id/solicitudes/:id(.:format)      solicitudes#update
                                        DELETE /solicitantes/:solicitante_id/beneficiarios/:beneficiario_id/solicitudes/:id(.:format)      solicitudes#destroy
              solicitante_beneficiarios GET    /solicitantes/:solicitante_id/beneficiarios(.:format)                                       beneficiarios#index
                                        POST   /solicitantes/:solicitante_id/beneficiarios(.:format)                                       beneficiarios#create
           new_solicitante_beneficiario GET    /solicitantes/:solicitante_id/beneficiarios/new(.:format)                                   beneficiarios#new
          edit_solicitante_beneficiario GET    /solicitantes/:solicitante_id/beneficiarios/:id/edit(.:format)                              beneficiarios#edit
               solicitante_beneficiario GET    /solicitantes/:solicitante_id/beneficiarios/:id(.:format)                                   beneficiarios#show
                                        PATCH  /solicitantes/:solicitante_id/beneficiarios/:id(.:format)                                   beneficiarios#update
                                        PUT    /solicitantes/:solicitante_id/beneficiarios/:id(.:format)                                   beneficiarios#update
                                        DELETE /solicitantes/:solicitante_id/beneficiarios/:id(.:format)                                   beneficiarios#destroy
                           solicitantes GET    /solicitantes(.:format)                                                                     solicitantes#index
                                        POST   /solicitantes(.:format)                                                                     solicitantes#create
                        new_solicitante GET    /solicitantes/new(.:format)                                                                 solicitantes#new
                       edit_solicitante GET    /solicitantes/:id/edit(.:format)                                                            solicitantes#edit
                            solicitante GET    /solicitantes/:id(.:format)                                                                 solicitantes#show
                                        PATCH  /solicitantes/:id(.:format)                                                                 solicitantes#update
                                        PUT    /solicitantes/:id(.:format)                                                                 solicitantes#update
                                        DELETE /solicitantes/:id(.:format)                                                                 solicitantes#destroy
                                        GET    /solicitantes(.:format)                                                                     solicitantes#index
                                        POST   /solicitantes(.:format)                                                                     solicitantes#create
                                        GET    /solicitantes/new(.:format)                                                                 solicitantes#new
                                        GET    /solicitantes/:id/edit(.:format)                                                            solicitantes#edit
                                        GET    /solicitantes/:id(.:format)                                                                 solicitantes#show
                                        PATCH  /solicitantes/:id(.:format)                                                                 solicitantes#update
                                        PUT    /solicitantes/:id(.:format)                                                                 solicitantes#update
                                        DELETE /solicitantes/:id(.:format)                                                                 solicitantes#destroy
                          beneficiarios GET    /beneficiarios(.:format)                                                                    beneficiarios#index
                                        POST   /beneficiarios(.:format)                                                                    beneficiarios#create
                       new_beneficiario GET    /beneficiarios/new(.:format)                                                                beneficiarios#new
                      edit_beneficiario GET    /beneficiarios/:id/edit(.:format)                                                           beneficiarios#edit
                           beneficiario GET    /beneficiarios/:id(.:format)                                                                beneficiarios#show
                                        PATCH  /beneficiarios/:id(.:format)                                                                beneficiarios#update
                                        PUT    /beneficiarios/:id(.:format)                                                                beneficiarios#update
                                        DELETE /beneficiarios/:id(.:format)                                                                beneficiarios#destroy
                                 ayudas GET    /ayudas(.:format)                                                                           ayudas#index
                                        POST   /ayudas(.:format)                                                                           ayudas#create
                              new_ayuda GET    /ayudas/new(.:format)                                                                       ayudas#new
                             edit_ayuda GET    /ayudas/:id/edit(.:format)                                                                  ayudas#edit
                                  ayuda GET    /ayudas/:id(.:format)                                                                       ayudas#show
                                        PATCH  /ayudas/:id(.:format)                                                                       ayudas#update
                                        PUT    /ayudas/:id(.:format)                                                                       ayudas#update
                                        DELETE /ayudas/:id(.:format)                                                                       ayudas#destroy
                          departamentos GET    /departamentos(.:format)                                                                    departamentos#index
                                        POST   /departamentos(.:format)                                                                    departamentos#create
                       new_departamento GET    /departamentos/new(.:format)                                                                departamentos#new
                      edit_departamento GET    /departamentos/:id/edit(.:format)                                                           departamentos#edit
                           departamento GET    /departamentos/:id(.:format)                                                                departamentos#show
                                        PATCH  /departamentos/:id(.:format)                                                                departamentos#update
                                        PUT    /departamentos/:id(.:format)                                                                departamentos#update
                                        DELETE /departamentos/:id(.:format)                                                                departamentos#destroy
                       new_user_session GET    /users/sign_in(.:format)                                                                    devise/sessions#new
                           user_session POST   /users/sign_in(.:format)                                                                    devise/sessions#create
                   destroy_user_session DELETE /users/sign_out(.:format)                                                                   devise/sessions#destroy
                      new_user_password GET    /users/password/new(.:format)                                                               devise/passwords#new
                     edit_user_password GET    /users/password/edit(.:format)                                                              devise/passwords#edit
                          user_password PATCH  /users/password(.:format)                                                                   devise/passwords#update
                                        PUT    /users/password(.:format)                                                                   devise/passwords#update
                                        POST   /users/password(.:format)                                                                   devise/passwords#create
               cancel_user_registration GET    /users/cancel(.:format)                                                                     devise/registrations#cancel
                  new_user_registration GET    /users/sign_up(.:format)                                                                    devise/registrations#new
                 edit_user_registration GET    /users/edit(.:format)                                                                       devise/registrations#edit
                      user_registration PATCH  /users(.:format)                                                                            devise/registrations#update
                                        PUT    /users(.:format)                                                                            devise/registrations#update
                                        DELETE /users(.:format)                                                                            devise/registrations#destroy
                                        POST   /users(.:format)                                                                            devise/registrations#create
                             home_index GET    /home/index(.:format)                                                                       home#index
                                   root GET    /                                                                                           home#in
