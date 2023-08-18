*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CARRINHO_TITLE}     order - My Store
${CARRINHO_DELETAR}   xpath=//*[@class="cart_quantity_delete"]


*** Keywords ***
Excluir o produto do carrinho
    Title Should Be  ${CARRINHO_TITLE}
    Wait Until Element Is Visible    ${CARRINHO_DELETAR}
    Click Element    ${CARRINHO_DELETAR}

#### Conferências
Conferir se o carrinho fica vazio
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be          xpath=//*[@id="center_column"]/p[@class='alert alert-warning']    Your shopping cart is empty.