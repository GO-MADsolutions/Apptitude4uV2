class Changenametwo < ActiveRecord::Migration
  def change
        rename_column :boatsandstreams, :opdtionD, :optionD
	rename_column :calendars, :opdtionD, :optionD
	rename_column :chainrules, :opdtionD, :optionD
	rename_column :clocks, :opdtionD, :optionD
	rename_column :decimalfractions, :opdtionD, :optionD
	rename_column :hcfandlcms, :opdtionD, :optionD
	rename_column :heightanddistances, :opdtionD, :optionD
	rename_column :logarithms, :opdtionD, :optionD
	rename_column :mixtureandalligations, :opdtionD, :optionD
	rename_column :numbers, :opdtionD, :optionD
	rename_column :partnerships, :opdtionD, :optionD
	rename_column :permutationandcombinations, :opdtionD, :optionD
	rename_column :pipesandcisterns, :opdtionD, :optionD
	rename_column :probabilities, :opdtionD, :optionD
	rename_column :profitandlosses, :opdtionD, :optionD
	rename_column :seriesoddmanouts, :opdtionD, :optionD
	rename_column :seriesfindmissingnumbers, :opdtionD, :optionD
	rename_column :simpleinterests, :opdtionD, :optionD
	rename_column :compoundinterests, :opdtionD, :optionD
	rename_column :simplifications, :opdtionD, :optionD
	rename_column :squareandcuberoots, :opdtionD, :optionD

	rename_column :surdsandindices, :opdtionD, :optionD
	rename_column :timeanddistances, :opdtionD, :optionD
	rename_column :timeandworks, :opdtionD, :optionD
	
  end
end
