# Hamming_code
a simple implementation of error detection using Hamming code 

used for single bit error detection , the input bits and the parity bits are arranged as follows 

<!DOCTYPE html>
<html lang="en">
<body>

<h2>Hamming Code Mapping</h2>

<table>
    <tr>
        <th>Position</th>
        <td>ip[3]</td>
        <td>ip[2]</td>
        <td>ip[1]</td>
        <td>p3</td>
        <td>ip[0]</td>
        <td>p2</td>
        <td>p1</td>
    </tr>
    <tr>
        <th>Data Bit</th>
        <td>d3</td>
        <td>d2</td>
        <td>d1</td>
        <td></td>
        <td>d0</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <th>Bit Number</th>
        <td>bit6</td>
        <td>bit5</td>
        <td>bit4</td>
        <td>bit3</td>
        <td>bit2</td>
        <td>bit1</td>
        <td>bit0</td>
    </tr>
</table>

</body>
</html>



p1 is decided based of ip[0] , ip[1] , ip[3] by (EVEN PARITY XOR)

p2 is decided based of ip[0] , ip[2] , ip[3] by (EVEN PARITY XOR)

p2 is decided based of ip[1] , ip[2] , ip[3] by (EVEN PARITY XOR)

## RTL view
![Hamming Code RTL View](https://github.com/ARX-0/Hamming_code/raw/main/images_HC/hamming%20code%20RTL%20view.png
)

## Waveforms and outputs
![Hamming Code WF 2](https://github.com/ARX-0/Hamming_code/raw/main/images_HC/hamming%20code%20wf%202.png
)

![Hamming Code WF](https://github.com/ARX-0/Hamming_code/raw/main/images_HC/hamming%20code%20wf.png
)
## the Tcl console 
![TCL Console Hamming Code](https://github.com/ARX-0/Hamming_code/raw/main/images_HC/tcl_console_hamming_code.png
)
