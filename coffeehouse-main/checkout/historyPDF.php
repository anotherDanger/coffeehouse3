<?php
session_start();

require_once '../../vendor/autoload.php';
require_once "historyFunction.php";
$id = $_GET['id'];
$username = $_SESSION['login'];
$history = new History();
$data = $history->historyPrint($id)[0];

$mpdf = new \Mpdf\Mpdf();

$html = '
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Laporan Faktur</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .invoice-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        .invoice-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .invoice-header h2 {
            color: #007bff;
        }
        .invoice-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .invoice-table th, .invoice-table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .invoice-total {
            margin-top: 20px;
            text-align: right;
        }
    </style>
</head>
<body>
    <div class="invoice-container">
        <div class="invoice-header">
            <h2>Laporan Faktur</h2>
        </div>
        <table class="invoice-table">
            <thead>
                <tr>
                    <th>ID Transaksi</th>
                    <th>Nama</th>
                    <th>Telepon</th>
                    <th>Nama Produk</th>
                    <th>Quantity</th>
                    <th>Alamat</th>
                    <th>Tanggal Pesanan</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>';

$html .= '
                <tr>
                    <td>' . htmlspecialchars($data['transaction_id']) . '</td>
                    <td>' . htmlspecialchars($data['name']) . '</td>
                    <td>' . htmlspecialchars($data['phone']) . '</td>
                    <td>' . htmlspecialchars($data['product_name']) . '</td>
                    <td>' . htmlspecialchars($data['quantity']) . '</td>
                    <td>' . htmlspecialchars($data['address']) . '</td>
                    <td>' . htmlspecialchars($data['order_date']) . '</td>
                    <td>' . htmlspecialchars($data['total']) . '</td>
                </tr>';

$html .= '
            </tbody>
        </table>
        <div class="invoice-total">
            <strong>Total Pembayaran: ' . htmlspecialchars($data['total']) . '</strong>
        </div>
    </div>
</body>
</html>';

$mpdf->WriteHTML($html);

$mpdf->Output('laporan_faktur.pdf', 'D');
?>
