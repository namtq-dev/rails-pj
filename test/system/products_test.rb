require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    check "Clothes" if @product.clothes
    fill_in "Detail", with: @product.detail
    check "Functional" if @product.functional
    check "Inside" if @product.inside
    fill_in "Name", with: @product.name
    check "Outside" if @product.outside
    fill_in "Price", with: @product.price
    check "Smart" if @product.smart
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    check "Clothes" if @product.clothes
    fill_in "Detail", with: @product.detail
    check "Functional" if @product.functional
    check "Inside" if @product.inside
    fill_in "Name", with: @product.name
    check "Outside" if @product.outside
    fill_in "Price", with: @product.price
    check "Smart" if @product.smart
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
