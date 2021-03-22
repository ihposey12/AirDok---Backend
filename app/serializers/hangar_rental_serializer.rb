class HangarRentalSerializer < ActiveModel::Serializer
    attributes :start_date, :end_date, :hangar

    def hangar
        object.hangar
    end
end