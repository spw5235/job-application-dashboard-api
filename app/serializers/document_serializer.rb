class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :doctype, :docsubject, :doctext, :docurl,
             :docdate, :job_ref_id, :job_ref_text, :editable

  def editable
    scope == object.user
  end
end
