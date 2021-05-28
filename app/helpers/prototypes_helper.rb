module PrototypesHelper
  def show
    @prototype = Prototype.find(params[:id])
    end
end
