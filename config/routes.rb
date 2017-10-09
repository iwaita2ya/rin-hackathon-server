Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :field_records
  resources :field_record_details
  match 'field_records/export_pgpi/:id' => 'field_records#export_pgpi', via: [:get, :post], defaults: {format: 'xml'}
  match 'field_records/export_data/:nendo/:rinpan/:shouhan' => 'field_records#export_data', via: [:get, :post], defaults: {format: 'html'}

end
