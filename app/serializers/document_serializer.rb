class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :doctype, :doctext, :docsubject, :docurl, :company_ref_id,
             :company_name, :contact_ref_id, :contact_ref_name, :docdate,
             :docsubject, :job_ref_id, :contact_ref_id, :editable

  def editable
    scope == object.user
  end
end
