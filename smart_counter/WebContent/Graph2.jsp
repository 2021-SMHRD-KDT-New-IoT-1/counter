<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTDHTML4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html id="id_html">
    <head>
        <title>Full Secondary Column, 1/3 x 1/3 x 1/3 Main Column.</title>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Graph2styles.css">
    </head>
    <body>
        <div id="doc3" class="yui-t7">
            <div id="hd">
                <div id="header">
                    <h1>����Ʈ � ī����</h1><br><p>����Ʈ � ī���͸� �̿��� ī���� ����� �׷����� �� �� �ֽ��ϴ�.</p>
                </div>
            </div>
            <div id="bd">
                <div id="yui-main">
                    <div class="yui-b">
                        <div class="yui-gb">
                            <div class="yui-u first">
                                <div class="content">
                                    <canvas id="myChart"></div>
                                </div>
                                <div class="yui-u">
                                    <div class="content">
                                        <canvas id="myChart2"></canvas>
                                    </div>
                                </div>
                                <div class="yui-u">
                                    <div class="content">
                                        <canvas id="myChart3"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--
                        <div class="yui-b">
                          <div id="secondary">Secondary Column</div>
                        </div>
                      </div>
                      <div id="ft">
                        <div id="footer">Footer</div>
                      </div>
                    </div>
                    -->
                    <script>
                        // === include 'setup' then 'config' above ===
                        var data1 = {
                            label: '��ǥ����',
                            backgroundColor: 'rgb(0, 0, 0)',
                            borderColor: 'rgb(0, 0, 0)',
                            type: 'line',
                            data: [
                                20,
                                20,
                                20,
                                20,
                                20,
                                20,
                                20
                            ]
                        };
                        var data2 = {
                            label: '��������',
                            backgroundColor: 'rgb(255, 0, 0)',
                            borderColor: 'rgb(255, 0, 0)',
                            data: [
                                10,
                                25,
                                15,
                                30,
                                5,
                                30,
                                45
                            ]
                        };
                        const labels = [
                            '10��1��',
                            '10��2��',
                            '10��3��',
                            '10��4��',
                            '10��5��',
                            '10��6��'
                        ];
                        const Adata = {
                            labels: labels,
                            datasets: [data1, data2]
                        };
                        const config = {
                            type: 'bar',
                            data: Adata,
                            options: {
                                maintainAspectRatio: false,
                                plugins: {
                                    title: {
                                        display: true,
                                        text: '��������Ű��'
                                    }
                                }
                            }
                        };
                        const myChart = new Chart(document.getElementById('myChart'), config);
                        // ////////////////////////////
                        var data3 = {
                            label: '��ǥ����',
                            backgroundColor: 'rgb(0, 0, 0)',
                            borderColor: 'rgb(0, 0, 0)',
                            type: 'line',
                            data: [
                                30,
                                30,
                                30,
                                30,
                                30,
                                30,
                                30
                            ]
                        };
                        var data4 = {
                            label: '��������',
                            backgroundColor: 'rgb(255, 0, 0)',
                            borderColor: 'rgb(255, 0, 0)',
                            data: [
                                50,
                                25,
                                45,
                                30,
                                15,
                                35,
                                45
                            ]
                        };
                        const Adata2 = {
                            labels: labels,
                            datasets: [data3, data4]
                        };
                        const config2 = {
                            type: 'bar',
                            data: Adata2,
                            options: {
                                maintainAspectRatio: false,
                                plugins: {
                                    title: {
                                        display: true,
                                        text: '�ȱ������'
                                    }
                                }
                            }
                        };
                        const myChart2 = new Chart(document.getElementById('myChart2'), config2);
                        // ///////////////////////////////
                        var data5 = {
                            label: '��ǥ����',
                            backgroundColor: 'rgb(0, 0, 0)',
                            borderColor: 'rgb(0, 0, 0)',
                            type: 'line',
                            data: [
                                10,
                                10,
                                10,
                                10,
                                10,
                                10,
                                10
                            ]
                        };
                        var data6 = {
                            label: '��������',
                            backgroundColor: 'rgb(255, 0, 0)',
                            borderColor: 'rgb(255, 0, 0)',
                            data: [
                                20,
                                5,
                                35,
                                14,
                                7,
                                15,
                                5
                            ]
                        };
                        const Adata3 = {
                            labels: labels,
                            datasets: [data5, data6]
                        };
                        const config3 = {
                            type: 'bar',
                            data: Adata3,
                            options: {
                                maintainAspectRatio: false,
                                plugins: {
                                    title: {
                                        display: true,
                                        text: '�ΰ��̰���'
                                    }
                                }
                            }
                        };
                        const myChart3 = new Chart(document.getElementById('myChart3'), config3);
                    </script>
                </body>
            </html>