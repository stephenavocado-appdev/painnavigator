class MedicationListsController < ApplicationController
  def index
    matching_medication_lists = MedicationList.all

    @list_of_medication_lists = matching_medication_lists.order({ :created_at => :desc })

    render({ :template => "medication_lists/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_medication_lists = MedicationList.where({ :id => the_id })

    @the_medication_list = matching_medication_lists.at(0)

    render({ :template => "medication_lists/show.html.erb" })
  end

  def create
    the_medication_list = MedicationList.new
    the_medication_list.medication = params.fetch("query_medication")
    the_medication_list.dosage = params.fetch("query_dosage")
    the_medication_list.unit = params.fetch("query_unit")
    the_medication_list.frequency = params.fetch("query_frequency")

    if the_medication_list.valid?
      the_medication_list.save
      redirect_to("/medication_lists", { :notice => "Medication list created successfully." })
    else
      redirect_to("/medication_lists", { :notice => "Medication list failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_medication_list = MedicationList.where({ :id => the_id }).at(0)

    the_medication_list.medication = params.fetch("query_medication")
    the_medication_list.dosage = params.fetch("query_dosage")
    the_medication_list.unit = params.fetch("query_unit")
    the_medication_list.frequency = params.fetch("query_frequency")

    if the_medication_list.valid?
      the_medication_list.save
      redirect_to("/medication_lists/#{the_medication_list.id}", { :notice => "Medication list updated successfully."} )
    else
      redirect_to("/medication_lists/#{the_medication_list.id}", { :alert => "Medication list failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_medication_list = MedicationList.where({ :id => the_id }).at(0)

    the_medication_list.destroy

    redirect_to("/medication_lists", { :notice => "Medication list deleted successfully."} )
  end
end
