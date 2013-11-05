require './lib/matriz.rb'

describe Matriz do

  before :each do
    @matriz = Matriz.new([[1,2,3],[1,2,3],[1,2,3]])
  end

  it "Se debe poder sumar dos matrices" do
    @aux = Matriz.new([[1,2,3],[1,2,3],[1,2,3]])
    (@matriz + @aux).matriz.should == [[2,4,6],[2,4,6],[2,4,6]]
  end

  it "Se debe poder restar dos matrices" do
    @aux = Matriz.new([[1,2,3],[1,2,3],[1,2,3]])
    (@matriz - @aux).matriz.should == [[0,0,0],[0,0,0],[0,0,0]]
  end

  it "Se debe poder multiplicar dos matrices" do
    @aux = Matriz.new([[1,2,3],[1,2,3],[1,2,3]])
    (@matriz * @aux).matriz.should == [[1,4,9],[1,4,9],[1,4,9]]
  end

end
