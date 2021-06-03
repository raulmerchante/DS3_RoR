class DiarioTest < ActionDispatch::IntegrationTest 
    test "can see the welcome page" do
        get "/"
        assert_select "h1", "VacunaT" 
    end
end