#!/bin/bash

export BUILD_ARGS="--load"
export SUBPACKAGES="alertsmanagement analysisservices apimanagement appconfiguration appplatform authorization automation cache cdn certificateregistration cognitiveservices communication compute config consumption containerapp containerregistry containerservice cosmosdb costmanagement customproviders databricks datafactory datamigration dataprotection datashare dbformysql dbforpostgresql devices elastic eventgrid eventhub guestconfiguration hdinsight healthbot healthcareapis insights iotcentral keyvault kusto loadtestservice logic machinelearningservices maintenance managedidentity management maps marketplaceordering netapp network notificationhubs operationalinsights operationsmanagement orbital policyinsights portal powerbidedicated purview recoveryservices relay resources search security securityinsights servicebus servicefabric servicelinker signalrservice solutions spring sql storage storagecache web"
export XPKG_ORG="ghcr.io/wasabii"
export VERSION="v2.6.1-wasabi.1"

make PLATFORMS="linux_amd64" BATCH_PLATFORMS="linux_amd64" SUBPACKAGES="${SUBPACKAGES}" XPKG_REG_ORGS="${XPKG_ORG}" XPKG_REG_ORGS_NO_PROMOTE="${XPKG_ORG}" CONFIG_DEPENDENCY_REG_ORG="${XPKG_ORG}" BRANCH_NAME="main" VERSION="${VERSION}" build.all
make PLATFORMS="linux_amd64" BATCH_PLATFORMS="linux_amd64" SUBPACKAGES="${SUBPACKAGES}" XPKG_REG_ORGS="${XPKG_ORG}" XPKG_REG_ORGS_NO_PROMOTE="${XPKG_ORG}" CONFIG_DEPENDENCY_REG_ORG="${XPKG_ORG}" BRANCH_NAME="main" VERSION="${VERSION}" publish

