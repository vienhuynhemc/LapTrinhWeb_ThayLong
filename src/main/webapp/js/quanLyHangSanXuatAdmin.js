capnhaphienthi();

function showsearch2(item) {
    let l1 = document.getElementById("div2").children;
    let l2 = l1[0].children;
    let l3 = l2[0].children;
    let l4 = l3[0].children;
    let l5 = l4[1].children;
    let l6 = l5[1].children;
    if (l6[0] == item) {
        l6[1].style.display = "flex";
        l6[0].style.display = "none";
        return;
    }
}

function hiddensearch2(item) {
    let l1 = document.getElementById("div2").children;
    let l2 = l1[0].children;
    let l3 = l2[0].children;
    let l4 = l3[0].children;
    let l5 = l4[1].children;
    let l6 = l5[1].children;
    let l7 = l6[1].children;
    if (l7[0] == item) {
        l6[0].style.display = "flex";
        l6[1].style.display = "none";
        return;
    }
}

function changesort() {
    document.getElementById("action").value = "sort";
    document.getElementById("mainForm").submit();
}

function showselect(item) {

    let index = 0;

    let list = document.getElementById("maindiv2").children;
    for (let i = 1; i < list.length; i++) {
        list2 = list[i].children;
        if (list2[6] == item) {
            index = i;
            break;
        }
    }

    if (index < 11) {
        let listItem = item.children;
        if (listItem[0].checked == true) {
            listItem[0].checked = false;
            listItem[4].style.display = "none";
        } else {
            listItem[0].checked = true;
            listItem[4].style.display = "block";
        }
    } else {


        let listItem = item.children;
        listItem[4].style.top = "-115px"
        if (listItem[0].checked == true) {
            listItem[0].checked = false;
            listItem[4].style.display = "none";
        } else {
            listItem[0].checked = true;
            listItem[4].style.display = "block";
        }
    }
}

function removekhachhang(item) {
    let listItem = document.getElementById("maindiv2").children;
    for (let i = 1; i < listItem.length; i++) {
        let list = listItem[i].children;
        let list2 = list[6].children;
        let list3 = list2[4].children;
        if (list3[1] == item) {
            list2[1].checked = false;
            document.getElementById("formYesNoTitle").innerText = 'Bạn có chắc chắn xóa #' + list3[2].value;
            document.getElementById("formYesNoTitle2").innerText = 'Việc xóa sẽ thay đổi dữ liệu của bạn ';
            let item = document.createElement("i");
            item.classList.add("fa");
            item.classList.add("fa-hand-grab-o");
            document.getElementById("formYesNoLink").href = "../../ManufacturerRemoveController?type=single&&manufacturerId=" + list3[2].value;
            document.getElementById("formYesNoTitle2").appendChild(item);
            document.getElementById("formYesNo").style.transform = 'scaleY(1)';
            return;
        }
    }
}

function capnhaphienthi() {
    let listItem = document.getElementById("maindiv2").children;
    for (let i = 0; i < listItem.length; i++) {
        if (i <= 13) {
            listItem[i].style.display = "flex";
        } else {
            listItem[i].style.display = "none";
        }
    }
}

function xoacacmuadachon() {
    let listItem = document.getElementById("maindiv2").children;
    let manufacturers = '';
    for (let i = 1; i < listItem.length; i++) {
        let list2 = listItem[i].children;
        let list3 = list2[0].children;
        if (list3[0].checked == true) {
            manufacturers += list3[1].value + " ";
        }
    }

    if (manufacturers.length > 0) {
        manufacturers = manufacturers.trim();
        let size = manufacturers.split(" ").length;

        document.getElementById("formYesNoTitle").innerText = 'Bạn có chắc chắn xóa ' + size + ' mục';
        document.getElementById("formYesNoTitle2").innerText = 'Việc xóa sẽ thay đổi dữ liệu của bạn ';
        let item = document.createElement("i");
        item.classList.add("fa");
        item.classList.add("fa-hand-grab-o");
        document.getElementById("formYesNoLink").href = "../../ManufacturerRemoveController?type=group&&manufacturers=" + manufacturers;
        document.getElementById("formYesNoTitle2").appendChild(item);
        document.getElementById("formYesNo").style.transform = 'scaleY(1)';
    }
}

function allselect() {
    let listItem = document.getElementById("maindiv2").children;
    let a = 0;
    for (let i = 1; i < listItem.length; i++) {
        let list2 = listItem[i].children;
        let list3 = list2[0].children;
        if (list3[0].checked == true) {
            a = 1;
            break;
        }
    }

    if (a == 1) {
        for (let i = 1; i < listItem.length; i++) {
            let list2 = listItem[i].children;
            let list3 = list2[0].children;
            if (list3[0].checked == true) {
                list3[0].checked = false;
            }
        }
    } else {
        for (let i = 1; i < listItem.length; i++) {
            let list2 = listItem[i].children;
            let list3 = list2[0].children;
            list3[0].checked = true;
        }
    }
}

function themdanhmuc() {
    document.getElementById("div1").style.display = "block";
    document.getElementById("div2").style.display = "none";
    document.getElementById("div3").style.display = "none";
}

function trove() {
    document.getElementById("div2").style.display = "block";
    document.getElementById("div1").style.display = "none";
    document.getElementById("div3").style.display = "none";
}

function editdanhmuc(item) {
    if (document.getElementById("div3").children.length > 0) {
        document.getElementById("div3").removeChild(document.getElementById("div3").children[0]);
    }

    let listItem = document.getElementById("maindiv2").children;
    for (let i = 1; i < listItem.length; i++) {
        let list = listItem[i].children;
        let list2 = list[6].children;
        let list3 = list2[4].children;
        if (list3[0] == item) {
            document.getElementById("div3").appendChild(list[7].cloneNode(true));
            document.getElementById("div3").style.display = "block";
            document.getElementById("div1").style.display = "none";
            document.getElementById("div2").style.display = "none";
            return;
        }
    }
}

function themitemchitiet(item) {

    let l1 = document.getElementById("div3").children[0];
    let l2 = l1.children;
    let l3 = l2[1].children;
    if (l3[4] == item) {

        let div = document.createElement("div");
        div.classList.add("itemchitiet");
        div.innerText = "*";
        let input = document.createElement("input");
        input.type = "text";
        input.required = true;
        input.placeholder = "Nhập chi tiết ở đây"
        div.appendChild(input);
        let i = document.createElement("i");
        i.classList.add("fa");
        i.classList.add("fa-close");
        i.onclick = function () {
            removeitemchitiet(i)
        };
        div.appendChild(i);
        l3[5].append(div);
    }

}

function removeitemchitiet(item) {
    let l1 = document.getElementById("div3").children[0];
    let l2 = l1.children;
    let l3 = l2[1].children;
    let l4 = l3[5].children;
    for (let i = 0; i < l4.length; i++) {
        let l5 = l4[i].children;
        if (l5[1] == item) {
            l3[5].removeChild(l4[i]);
            return;
            _
        }
    }
}

function themitemchitiet2(item) {

    let l1 = document.getElementById("div1").children[0];
    let l2 = l1.children;
    let l3 = l2[1].children;
    if (l3[4] == item) {

        let div = document.createElement("div");
        div.classList.add("itemchitiet");
        div.innerText = "*";
        let input = document.createElement("input");
        input.type = "text";
        input.required = true;
        input.placeholder = "Nhập chi tiết ở đây"
        div.appendChild(input);
        let i = document.createElement("i");
        i.classList.add("fa");
        i.classList.add("fa-close");
        i.onclick = function () {
            removeitemchitiet2(i)
        };
        div.appendChild(i);
        l3[5].append(div);
    }

}

function removeitemchitiet2(item) {
    let l1 = document.getElementById("div1").children[0];
    let l2 = l1.children;
    let l3 = l2[1].children;
    let l4 = l3[5].children;
    for (let i = 0; i < l4.length; i++) {
        let l5 = l4[i].children;
        if (l5[1] == item) {
            l3[5].removeChild(l4[i]);
            return;
        }
    }
}

function prePage(nowPage) {
    let n = parseInt(nowPage);
    if (n > 1) {
        document.getElementById("numberOfPage").value = parseInt(nowPage) - 1;
        document.getElementById("action").value = "nextPage";
        document.getElementById("mainForm").submit();
    }
}

function nextPage(nowPage, maximumPage, item) {
    let n = parseInt(nowPage);
    let m = parseInt(maximumPage);
    if (n < m) {
        document.getElementById("numberOfPage").value = n + 1;
        document.getElementById("action").value = "nextPage";
        document.getElementById("mainForm").submit();
    }
}

function pageNavigation(nowPage) {
    document.getElementById("numberOfPage").value = parseInt(nowPage);
    document.getElementById("action").value = "nextPage";
    document.getElementById("mainForm").submit();
}

function changeFilter() {
    document.getElementById("action").value = "changeFilter";
    document.getElementById("mainForm").submit();
}

const node = document.getElementsByClassName("searchsubmit")[0];
node.addEventListener("keyup", function (event) {
    if (event.key == "Enter" || event.keyCode == 13) {
        document.getElementById("action").value = "search";
        document.getElementById("mainForm").submit();
    }
});

function searchByClick(){
    document.getElementById("action").value = "search";
    document.getElementById("mainForm").submit();
}

function loadPage() {
    document.getElementById("action").value = "load";
    document.getElementById("mainForm").submit();
}

function hiddenFormYesNo() {
    document.getElementById("formYesNo").style.transform = 'scaleY(0)';
}

function hiddenNotifiSuccess() {
    document.getElementById("notifiSuccess").style.transform = 'scaleY(0)';
}

function themmoi() {
    let l1 = document.getElementById("div1").children[0].children;
    let l2 = l1[1].children;

    let l3 = l2[2].children;
    let nameHang = l3[1].value;

    let array = [];
    let l4 = l2[5].children;
    for (let i = 0; i < l4.length; i++) {
        let l5 = l4[i].children;
        let value = l5[0].value;
        value = value.trim();
        if (value.length > 0) {
            array.push(value);
        }
    }

    nameHang = nameHang.trim();
    if (nameHang.length > 0) {

        let information = '';
        for (let i = 0; i < array.length; i++) {
            if (i == array.length - 1) {
                information += array[i];
            } else {
                information += array[i] + ";";
            }
        }

        document.getElementById("formYesNoTitle").innerText = 'Bạn có chắc chắn thêm hãng sản xuất mới';
        document.getElementById("formYesNoTitle2").innerText = 'Việc thêm vào sẽ thay đổi dữ liệu của bạn ';
        let item = document.createElement("i");
        item.classList.add("fa");
        item.classList.add("fa-hand-grab-o");
        document.getElementById("formYesNoLink").href = `../../ManufacturerAddController?manufacturerName=${nameHang}&&manufacturerInformations=${information}`;
        document.getElementById("formYesNoTitle2").appendChild(item);
        document.getElementById("formYesNo").style.transform = 'scaleY(1)';
    }

}

function capnhap() {
    let l1 = document.getElementById("div3").children[0].children;
    let l2 = l1[1].children;

    let l3 = l2[2].children;
    let nameHang = l3[1].value;
    let maHang = l3[2].value;

    let array = [];
    let l4 = l2[5].children;
    for (let i = 0; i < l4.length; i++) {
        let l5 = l4[i].children;
        let value = l5[0].value;
        value = value.trim();
        if (value.length > 0) {
            array.push(value);
        }
    }

    nameHang = nameHang.trim();
    if (nameHang.length > 0) {

        let information = '';
        for (let i = 0; i < array.length; i++) {
            if (i == array.length - 1) {
                information += array[i];
            } else {
                information += array[i] + ";";
            }
        }

        document.getElementById("formYesNoTitle").innerText = 'Bạn có chắc chắn cập nhật lại hãng sản xuất này';
        document.getElementById("formYesNoTitle2").innerText = 'Việc cập nhật lại sẽ thay đổi dữ liệu của bạn ';
        let item = document.createElement("i");
        item.classList.add("fa");
        item.classList.add("fa-hand-grab-o");
        document.getElementById("formYesNoLink").href = `../../ManufacturerEditController?manufacturerName=${nameHang}&&manufacturerInformations=${information}&&manufacturerId=${maHang}`;
        document.getElementById("formYesNoTitle2").appendChild(item);
        document.getElementById("formYesNo").style.transform = 'scaleY(1)';
    }

}

function showselectgopage(item) {

    let listItem = document.getElementById("leftnextpage").children;

    let listUl = listItem[2].children;

    for (let i = 0; i < listUl.length; i++) {

        let list = listUl[i].children;
        if (list[0] == item) {

            let l = list[1].children;
            if (l[0].checked == true) {
                list[1].style.display = "none";
                l[0].checked = false;
            } else {
                list[1].style.display = "flex";
                l[1].click();
                l[0].checked = true;
            }
        }
    }
}

function gopagefast(item) {

    let listItem = document.getElementById("leftnextpage").children;

    let listUl = listItem[2].children;

    for (let i = 0; i < listUl.length; i++) {

        let l = listUl[i].children;

        if (l.length == 2) {
            l = l[1].children;
            if (l[2] == item) {
                let value = l[1].value;

                let maxPage = parseInt(document.getElementById("maximunNumberOfPage").value);
                let nowPage = parseInt(document.getElementById("numberOfPage").value);

                if (Number.isInteger(value)) {

                    if (value != nowPage && value >= 1 && value <= maxPage) {
                        document.getElementById("numberOfPage").value = value;
                        document.getElementById("action").value = "nextPage";
                        document.getElementById("mainForm").submit();
                    }

                } else {
                    if (value.match(/^-{0,1}\d+$/)) {

                        let number = parseInt(value);

                        if (number != nowPage && number >= 1 && number <= maxPage) {
                            document.getElementById("numberOfPage").value = number;
                            document.getElementById("action").value = "nextPage";
                            document.getElementById("mainForm").submit();
                        }

                    }
                }
            }
        }
    }
}

