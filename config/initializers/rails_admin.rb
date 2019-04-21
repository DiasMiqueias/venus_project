RailsAdmin.config do |config|


  #Nome do Projeto
  config.main_app_name = ["Vénus", ""]

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end


  #Confirando os campos que aparecerão no sistema

  config.model User do
    create do
      field  :name
      field  :document
      field  :kind
      field  :status
      field  :phone
      field  :notes
      field  :status
      field  :encrypted_password
      field  :reset_password_token
    end

    edit do
      field  :name
      field  :document
      field  :kind
      field  :status
      field  :phone
      field  :notes
      field  :status
      field  :encrypted_password
      field  :reset_password_token
    end

    list do
      field  :name
      field  :email
      field  :phone

    end
  end

  #configurando ordem do menu



  config.model Office do
    parent Category
    weight -2
  end

  config.model Category do
    parent User
    weight -1
  end

  config.model Address do
    visible false
  end

end
