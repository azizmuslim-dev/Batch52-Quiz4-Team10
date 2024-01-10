*** Settings ***
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/bookPageObject/bookPage.robot
Resource    ../pageObjects/searchPageObject/searchPage.robot
Library    AppiumLibrary

Test Setup    Run Keywords 
        #1. Buka aplikasi Flights    
...    Open Flights application    
        #2. Login menggunakan kredensial valid
...    AND    Login With Valid Credentials
Test Teardown    Close Flights application

*** Test Cases ***
Login Test Case
    #1. Memverifikasi halaman utama muncul
    Verify Home Page Appears
    #2. Memverifikasi pengguna berhasil login
    Verify User Is logged In

Book Test Case
    #1. Memverifikasi tombol 'Book' terlihat
    Verify Button Book Is Visible
    #2. Klik tombol 'Book' di halaman utama
    Click Book Book Button In Home Page
    #3. Memverifikasi halaman 'Book' muncul
    Verify Book Page Is Visible
    #4. Klik field 'City From'
    Click Field City From
    #5. Memverifikasi field 'City From' terlihat
    Verify Field City From Is Visible
    #6. Klik field 'City From Which Are Desired'
    Click Field City From Which Are Desired
    #7. Klik field 'City To'
    Click Field City To
    #8. Memverifikasi field 'City To' terlihat
    Verify Field City To Is Visible
    #9. Klik field 'City To Which Are Desired'
    Click Field City To Which Are Desired
    #10. Klik field 'Class' 
    Click Field Class 
    #11. Memverifikasi field 'Class' terlihat
    Verify Field Class Is Visible
    #12. Klik field 'Class To Which Are Desired'
    Click Field Class To Which Are Desired
    #13. Klik tombol 'Start Date'
    Click Start Date Button
    #14. Memverifikasi field 'Start Date' terlihat
    Verify Field Start Date Is Visible
    #15. Klik field 'Start Date To Which Are Desired'
    Click Field Start Date To Which Are Desired
    #16. Klik tombol 'Ok'
    Click Button Ok
    #17. Klik tombol 'End Date'
    Click End Date Button
    #18. Memverifikasi field 'End Date' terlihat
    Verify Field End Date Is Visible
    #19. Klik field 'End Date To Which Are Desired'
    Click Field End Date To Which Are Desired
    #20. Klik tombol 'Ok'
    Click Ok Button
    #21. Checklist field 'Flights And Hotels'
    Checklist Field Flights And Hotels 
    #22. Checklist field 'Days'
    Checklist Field Days
    #23. Klik tombol 'Book' di halaman 'Book'
    Click Button Book In Book Page
    #24. Memverifikasi daftar harga 'Book' terlihat
    Verify List Book Price Is Visible
    #25. Pilih harga 'Book' yang diinginkan
    Select Price Book Which Are Desired
    #26. Klik tombol 'Book' dengan harga yang dipilih
    Click Button Book With Selected Price
    #27. Konfirmasi harga 'Book'
    Confirmed Book Price
    #28. Memverifikasi 'Book' berhasil
    Verify Book Is Succesfully

Search Test Case
    #1. Memverifikasi tombol 'Search' terlihat
    Verify Button Search Is Visible
    #2. Klik tombol 'Search' di halaman utama
    Click Search Button In Home Page
    #3. Memverifikasi halaman 'Search' muncul
    Verify Search Page Is Visible
    #4. Input nilai valid pada field pencarian
    Input Search Field With Valid Value
    #5. Klik tombol 'Search' untuk mendapatkan hasil pencarian
    Click Search Button For Get The Search Result
    #6. Memverifikasi halaman hasil pencarian muncul
    Verify Search Result Page Is Visible
