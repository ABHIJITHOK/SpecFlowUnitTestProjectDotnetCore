# -------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Title: ExecuteSpecFlowTests.ps1
# Purpose: Powershell Script to execute individual tests from command line and 
#          and convert MSTest result file from .trx format to .html format for readablity.
# Author: Abhy.Kizhakkepat@tattsgroup.com
# Date: 10-May-2019
# Required Parameters: Test Name
# How to run:
#			  - Open command shell in the test project dll folder (for eg. C:\Git\Tabcorp\Wagering.Tote.Automation.FunctionalTest\Wagering.Tote.Automation.FunctionalTest\bin\Debug\netcoreapp2.1)
#			  - type the following and execute:
#					.\ExecuteSpecFlowTests.ps1 "BravoRespondsWithSignOnResponseMessageOnReceivingSignOnRequestMessageFromTerminal"
#						where BravoRespondsWithSignOnResponseMessageOnReceivingSignOnRequestMessageFromTerminal is a sample Test Name from the Unit Test Project
# -------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Begin
$date = Get-Date -format "yyyy-MM-dd"
$fullyQualifiedName = $args[0]
dotnet vstest "SpecflowAndDotNetCore.dll" --TestCaseFilter:"(Name=$fullyQualifiedName)" --logger:"trx;LogFileName=C:\wagering\tote\test\logs\$date\SampleProjectTestResults_$fullyQualifiedName.trx"
#End
