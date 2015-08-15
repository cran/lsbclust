// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// ClustMeans
NumericMatrix ClustMeans(int nclust, IntegerVector start, NumericMatrix data);
RcppExport SEXP lsbclust_ClustMeans(SEXP nclustSEXP, SEXP startSEXP, SEXP dataSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< int >::type nclust(nclustSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type start(startSEXP);
    Rcpp::traits::input_parameter< NumericMatrix >::type data(dataSEXP);
    __result = Rcpp::wrap(ClustMeans(nclust, start, data));
    return __result;
END_RCPP
}
// ComputeMeans
NumericMatrix ComputeMeans(IntegerVector cm, NumericMatrix data, NumericVector weight, int nclust);
RcppExport SEXP lsbclust_ComputeMeans(SEXP cmSEXP, SEXP dataSEXP, SEXP weightSEXP, SEXP nclustSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< IntegerVector >::type cm(cmSEXP);
    Rcpp::traits::input_parameter< NumericMatrix >::type data(dataSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type weight(weightSEXP);
    Rcpp::traits::input_parameter< int >::type nclust(nclustSEXP);
    __result = Rcpp::wrap(ComputeMeans(cm, data, weight, nclust));
    return __result;
END_RCPP
}
// AssignCluster
List AssignCluster(NumericMatrix data, NumericVector weight, NumericMatrix M, int nclust);
RcppExport SEXP lsbclust_AssignCluster(SEXP dataSEXP, SEXP weightSEXP, SEXP MSEXP, SEXP nclustSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericMatrix >::type data(dataSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type weight(weightSEXP);
    Rcpp::traits::input_parameter< NumericMatrix >::type M(MSEXP);
    Rcpp::traits::input_parameter< int >::type nclust(nclustSEXP);
    __result = Rcpp::wrap(AssignCluster(data, weight, M, nclust));
    return __result;
END_RCPP
}
// KMeansW
List KMeansW(int nclust, IntegerVector start, NumericMatrix data, NumericVector weight, double eps, int IterMax);
RcppExport SEXP lsbclust_KMeansW(SEXP nclustSEXP, SEXP startSEXP, SEXP dataSEXP, SEXP weightSEXP, SEXP epsSEXP, SEXP IterMaxSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< int >::type nclust(nclustSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type start(startSEXP);
    Rcpp::traits::input_parameter< NumericMatrix >::type data(dataSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type weight(weightSEXP);
    Rcpp::traits::input_parameter< double >::type eps(epsSEXP);
    Rcpp::traits::input_parameter< int >::type IterMax(IterMaxSEXP);
    __result = Rcpp::wrap(KMeansW(nclust, start, data, weight, eps, IterMax));
    return __result;
END_RCPP
}
// LossMat
NumericMatrix LossMat(NumericMatrix x, NumericMatrix y);
RcppExport SEXP lsbclust_LossMat(SEXP xSEXP, SEXP ySEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericMatrix >::type x(xSEXP);
    Rcpp::traits::input_parameter< NumericMatrix >::type y(ySEXP);
    __result = Rcpp::wrap(LossMat(x, y));
    return __result;
END_RCPP
}
