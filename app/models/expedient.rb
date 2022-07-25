class Expedient < ApplicationRecord
    belongs_to :expediente_status
    belongs_to :tipo_solicitud
end
