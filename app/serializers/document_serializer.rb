class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :doctype, :doctext, :docurl, :company_ref_id, :company_name, :contact_ref_id, :contact_ref_name
end
